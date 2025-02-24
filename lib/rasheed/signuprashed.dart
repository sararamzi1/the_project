import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'verify.dart';



class SignUpra extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xff2b569c)

      ,
      appBar: AppBar( backgroundColor: Colors.transparent,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        },
          icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black,),),),
      body: ListView(
        children: [
          Container(

          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 170),
              child: Text(
                'انشاء حساب',
                style: TextStyle(fontSize: 50, color: Colors.white),
              ),
            ),
          ),
          Center(
            child: CurvedBox(),
          ),
        ],
      ),

    );

  }
}
// decoration: BoxDecoration(
// gradient: LinearGradient(
// colors: [
// Color(0xfffdb167),
// Color(0xfff18317),
// Color(0xffd66d07),
// ],
// ),
// ),
// class  GradientBackround extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return Row(
//       children: [
//         Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: [
//                 Color(0xfffdb167),
//                 Color(0xfff18317),
//                 Color(0xffd66d07),
//               ],
//             ),
//           ),
//         ),
//         Positioned(top: 40,left: 10,
//           child: IconButton(icon: Icon(Icons.arrow_back_ios),
//             onPressed: (){
//               Navigator.pop(context);
//             },
//           ),
//         ),
//         Positioned(top: 60,left: 180,
//           child: Text('انشاء حساب',style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),),
//         Center(
//           child: CurvedBox(),
//         ),
//       ],
//     );
//
//
//
//
//   }
// }

class CurvedBox extends StatefulWidget{
  @override
  State<CurvedBox> createState() => _CurvedBoxState();
}

class _CurvedBoxState extends State<CurvedBox> {
  bool _isVisible=false;
  bool _isPasswordCharacter=false;
  bool _hasnumbers=false;
  onPasswordChanged(String password){
    final numericRegex=RegExp(r'[0-9]');
    setState(() {
      _isPasswordCharacter=false;
      if(password.length>=8)
        _isPasswordCharacter=true;

      if(numericRegex.hasMatch(password))
        _hasnumbers=true;

    });

  }
  @override
  Widget build(BuildContext context){
    Padding(padding: EdgeInsets.only(top: 20),);
    return Container(
      margin: EdgeInsets.only(top: 30,bottom: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30),bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30),),

      ),
      padding: EdgeInsets.all(30),
      width: 398,
      height: 600,
      child: Directionality(textDirection: TextDirection.rtl, child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 25,),
            TextField(decoration: InputDecoration(labelText: 'الاسم',labelStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),),
            SizedBox(height: 25,),
            TextField(decoration: InputDecoration(labelText: 'الرقم',labelStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 25,),
            TextField(decoration: InputDecoration(labelText: 'الرقم الاكاديمي',labelStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),),
            SizedBox(height: 25,),

            TextField(decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: (){
                  setState(() {
                    _isVisible= !_isVisible;
                  });
                }, icon: _isVisible? Icon(Icons.visibility,color: Colors.black,):
              Icon(Icons.visibility_off,color: Colors.grey,),)


              ,labelText: 'كلمة السر',labelStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              obscureText: !_isVisible,
              onChanged: (password)=>onPasswordChanged(password),
            ),
            SizedBox(height: 50,),
            Row(children: [
              AnimatedContainer(duration: Duration(milliseconds: 500),
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: _isPasswordCharacter?Colors.green:Colors.transparent,
                  border:_isPasswordCharacter?Border.all(color: Colors.transparent):
                  Border.all(color: Colors.grey.shade400),
                  borderRadius: BorderRadius.circular(50),

                ),
                child: Center(child:Icon(Icons.check,color: Colors.white,size: 10,) ,),
              ),
              SizedBox(width: 10,),
              Text('يحتوي على الاقل 8 ارقام',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold))


            ],),
            SizedBox(height: 10,),
            Row(children: [
              AnimatedContainer(duration: Duration(milliseconds: 500),
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: _hasnumbers?Colors.green:Colors.transparent,
                  border:_hasnumbers?Border.all(color: Colors.transparent):
                  Border.all(color: Colors.grey.shade400),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(child:Icon(Icons.check,color: Colors.white,size: 10,) ,),
              ),
              SizedBox(width: 10,),
              Text('يحتوي على الاقل 1 حرف',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
            ],),



            SizedBox(height: 60),
            SizedBox(
                width: double.infinity,
                child: Container(
                    padding: EdgeInsets.only(top: 1,left: 1.5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border:Border(
                          bottom: BorderSide(color: Colors.black),
                          top: BorderSide(color: Colors.black),
                          left: BorderSide(color: Colors.black),
                          right: BorderSide(color: Colors.black),
                        )

                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Color(0xfff3841b,
                      ),
                          minimumSize:Size(60,50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          )),
                      onPressed: (){
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>Otp()));
                        // Navigator.push(context,MaterialPageRoute(builder: (context)=>HomePage()), );
                      }, child: Text('التالي',  textAlign:TextAlign.right,
                      style: TextStyle(color: Colors.white,
                        fontSize: 21,fontWeight: FontWeight.bold,),
                    ),
                    )

                )

            ),
          ]  ),


      ),
    );
  }
}