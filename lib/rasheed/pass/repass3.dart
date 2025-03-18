import 'package:flutter/material.dart';
import 'package:trying/pass/repass1.dart';
import 'done.dart';

class raCreate extends StatefulWidget{

  const raCreate({Key? key}) : super(key: key);
  @override
  _Create createState()=> _Create();

}
class _Create extends State<raCreate>{
  bool _isVisible=false;
  bool _unVisible=false;
  final TextEditingController _passwordController=TextEditingController();
  final TextEditingController _confirmPasswordController=TextEditingController();
  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(

            children: [
              Container(
                width:  MediaQuery.of(context).size.width,
                height: 80,
                decoration: BoxDecoration(
                    color: Color(0xff012861),
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(40),
                        bottomLeft: Radius.circular(40))
                ),

                child:Row(
                  children: [

                    Align(alignment:Alignment.topLeft,
                      child:
                      IconButton(onPressed: (){
                        Navigator.of(context).pop();
                      },
                        icon: Icon(Icons.arrow_back_ios),),),
                    SizedBox(width: 80,),
                    Text('اعادة تعيين كلمة السر',style: TextStyle(color: Colors.white,fontSize: 20,
                        fontWeight: FontWeight.bold),)


                  ],
                ),





              ),
              SizedBox(height: 20,),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/push.png',width: 350,),
                    SizedBox(height: 40,),



                  ]) ,


              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(textAlign: TextAlign.right,
                    controller: _passwordController,
                    obscureText: !_unVisible,

                    decoration: InputDecoration(
                      constraints: BoxConstraints(
                          maxWidth: 290),
                      hintText: 'كلمة السر الجديدة',
                      hintStyle: TextStyle(color:Colors.grey,),

                      suffixIcon: IconButton(
                        onPressed: (){
                          setState(() {
                            _unVisible= !_unVisible;
                          });
                        }, icon: _unVisible? Icon(Icons.visibility,color: Colors.black,):
                      Icon(Icons.visibility_off,color: Colors.grey,),),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.lightBlue,width: 3),
                          borderRadius: BorderRadius.circular(50)

                      ),
                    ),

                  ),
                  SizedBox(height: 20,),
                  TextField(
                    textAlign: TextAlign.right,
                    controller: _confirmPasswordController,
                    obscureText:!_isVisible,
                    decoration: InputDecoration(


                      constraints: BoxConstraints(
                          maxWidth: 290),
                      hintText: 'تاكيد كلمة السر',
                      hintStyle: TextStyle(color:Colors.grey,),

                      suffixIcon: IconButton(
                        onPressed: (){
                          setState(() {
                            _isVisible= !_isVisible;
                          });
                        }, icon: _isVisible? Icon(Icons.visibility,color: Colors.black,):
                      Icon(Icons.visibility_off,color: Colors.grey,),

                      ),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.lightBlue,width: 3),
                          borderRadius: BorderRadius.circular(50)

                      ),
                    ),

                  ),

                  SizedBox(height: 40,),
                  SizedBox(
                      width: 280,
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
                              // Navigator.push(context, MaterialPageRoute(builder: (context)=>Send()));
                              Navigator.push(context,MaterialPageRoute(builder: (context)=>done()), );
                            }, child: Text('حفظ',  textAlign:TextAlign.right,
                            style: TextStyle(color: Colors.white,
                              fontSize: 21,fontWeight: FontWeight.bold,),
                          ),
                          )

                      )

                  ),



                ],


              ),
            ]));
  }}
