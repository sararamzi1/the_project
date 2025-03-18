import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:trying/rasheed/pass/repass3.dart';
import 'package:pinput/pinput.dart';

class raSend extends StatefulWidget{
  const raSend({Key? key}) : super(key: key);
  @override
  _Send createState()=> _Send();
}
class _Send extends State<raSend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
            children: [
              Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                height: 80,
                decoration: BoxDecoration(
                    color: Color(0xff012861),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(40),
                        bottomLeft: Radius.circular(40))
                ),

                child: Row(
                  children: [

                    Align(alignment: Alignment.topLeft,
                      child:
                      IconButton(onPressed: () {
                        Navigator.of(context).pop();
                      },
                        icon: Icon(Icons.arrow_back),),),
                    SizedBox(width: 100,),
                    Text('كود التحقق',
                      style: TextStyle(color: Colors.white, fontSize: 20,
                          fontWeight: FontWeight.bold),)


                  ],
                ),


              ),
              SizedBox(height: 10,),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/reset.png', width: 340,),
                  ]),
              SizedBox(height: 40,),
              Text('يرجى ادخال رمز تغيير المرور\n المرسل الى رقمك',
                textAlign: TextAlign.center,style: TextStyle(fontSize: 20,),),

              SizedBox(height: 15,),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  VerificationCode(
                      length:4,
                      textStyle:TextStyle(fontSize: 20),
                      underlineColor:Colors.blue,
                      keyboardType:TextInputType.number,
                      onCompleted:(value){},
                      onEditing:(value){}
                  ),
                ],

              ),


              SizedBox(height: 40,),
              SizedBox(

                  width: 20,
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>raCreate()));
                          // Navigator.push(context,MaterialPageRoute(builder: (context)=>HomePage()), );
                        }, child: Text('ارسال',  textAlign:TextAlign.right,
                        style: TextStyle(color: Colors.white,
                          fontSize: 21,fontWeight: FontWeight.bold,),
                      ),
                      )

                  )

              ),

            ]));
  }
}
