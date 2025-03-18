import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trying/rasheed/pass/repass1.dart';
import '../home_page.dart';
// import 'verify.dart';
import 'package:trying/pass//repass1.dart';
class LoginPagera extends StatefulWidget{
  LoginPagera ({key});

  @override
  State <LoginPagera> createState()=> _LoginPageState();

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
class  _LoginPageState extends State <LoginPagera>{
  bool _isPassword=false;
  @override
  final TextEditingController idController=TextEditingController();
  final TextEditingController passwordController=TextEditingController();
  bool rememberUser=false;
  late Size mediaSize;
  late Color myColor;
  @override
  Widget build (BuildContext context) {
    myColor=Colors.white30;
    mediaSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(

        color: myColor,
        image: DecorationImage(image: AssetImage('assets/WhatsApp Image 2025-02-25 at 00.53.53_693cca1d.jpg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode( myColor.withOpacity(0.6),BlendMode.dstATop),
        ),),


      child: Scaffold(

        backgroundColor: Colors.white30,
        body:  Stack
          (children: [
          Positioned(top:80,child: _buildTop()),
          Positioned(bottom:0,child: _buildBottom())
        ]),
      ),
    );
  }


  Widget _buildTop(){

    return SizedBox(

      width: mediaSize.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [

          Image.asset('assets/WhatsApp Image 2025-02-25 at 00.53.53_693cca1d.jpg',width: 70,height: 70,),
          Text('تسجيل الدخول',style: TextStyle(color: Colors.black,fontSize: 35,fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }


  Widget _buildBottom(){
    return SizedBox(width: mediaSize.width,
      child: Card(

        color: Colors.white,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30),
              topRight: Radius.circular(30),)
        ),
        child:Padding(
          padding:  EdgeInsets.all(15.0),
          child: _buildFrom(),

        ),

      ),
    );
  }



  Widget _buildFrom(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Align(alignment:Alignment.centerLeft,
          child:
          IconButton(onPressed: (){
            Navigator.of(context).pop();
          },
            icon: Icon(Icons.arrow_back_ios),),),
        Text('اهلا بك',style:TextStyle(color: Color(0xfff3841b),fontSize: 35,fontWeight: FontWeight.bold),),
        _buildGreyText("يرجى ادخال بياناتك"),
        const SizedBox(height: 60,),
        _buildGreyText('الرقم الالكتروني'),
        _buildid(idController),
        const SizedBox(height: 40,),
        _buildGreyText('كلمة السر'),
        _buildInputFiled(passwordController,isPassword: true),
        const SizedBox(height: 20,),
        _buildRememberForget(),
        const SizedBox(height: 20),
        _buildLoginButton(),
        const SizedBox(height: 20,),
      ],
    );
  }


  Widget _buildGreyText(String text){
    return Text(text,style: TextStyle(
      color: Colors.grey,
    ),);
  }


  Widget _buildid(TextEditingController controller){
    return TextField(
      textAlign: TextAlign.right,
      controller:controller,


    );
  }

  Widget  _buildInputFiled(TextEditingController controller,{isPassword = false}){
    return TextField(
      textAlign: TextAlign.right,
      controller:controller,
      decoration: InputDecoration(
        prefixIcon:IconButton(onPressed: (){
          setState(() {
            _isPassword= !_isPassword;
          });
        },
          icon:  _isPassword?Icon(Icons.visibility,color: Colors.black,):Icon(Icons.visibility_off,color: Colors.grey,),),
      ),
      obscureText: !_isPassword,
    );
  }
  Widget  _buildRememberForget(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(value:  rememberUser, onChanged: (value){
              setState(() {
                rememberUser=value!;
              });
            }),
            _buildGreyText('تذكرني'),
          ],

        ),
        TextButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>raForget()));}, child: _buildGreyText('لقد نسيت كلمة السر')),
      ],



    );




  }

  Widget  _buildLoginButton(){
    return   Container(
      padding: EdgeInsets.only(top: 3,left: 3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border:Border(
            bottom: BorderSide(color: Colors.black),
            top: BorderSide(color: Colors.black),
            left: BorderSide(color: Colors.black),
            right: BorderSide(color: Colors.black),
          )
      ),
      child:MaterialButton(
        minWidth:double.infinity,
        height: 60,
        color: Color(0xff012861),
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50)
        ),
        onPressed: () {
          debugPrint('الرقم الاكاديمي:${idController.text}');
          debugPrint('كلمة السر:${passwordController.text}');
          // if (idController.text.isEmpty || passwordController.text.isEmpty){
          //   _showErrorDialog(context,'يرجى ملئ الحقل');
          // }else if(!isValidCredentials(idController as String,passwordController as String)){
          //   _showErrorDialog(context,'كلمة السر او الرقم الاكاديمي غير صحيحان');
          // }else{
          //   // Navigator.push(context, MaterialPageRoute(builder: (context)=>Otp()));
          // }
        }, child: Text('تسجيل الدخول',style: TextStyle(
          fontSize: 30,fontWeight: FontWeight.w600,color: Colors.white

      ),),
      ),
    ) ;
  }
  //
  // bool isValidCredentials(String idController,String passwordController){
  //   return idController =='12345' && passwordController=='passwordController';
  }

  // void
  // _showErrorDialog(BuildContext context,String message){
  //   showDialog(context: context, builder: (BuildContext context){
  //     return AlertDialog(
  //       title: const Text('خطا'),
  //       content: Text(message),
  //       actions: <Widget>[
  //         TextButton(onPressed: (){
  //           Navigator.of(context).pop();
  //         }, child:const Text("حسنا"))
  //       ],
  //     );
  //   });
  //
  // }



