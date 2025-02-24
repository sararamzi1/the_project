import 'package:flutter/material.dart';
import 'loginrashed.dart';
import'signuprashed.dart';


class SecondPagerashed extends StatefulWidget{
  @override
  State<SecondPagerashed> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPagerashed> {
// first login screen for العلوم الحديثة
  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black,),
          ),
        ),
        body:SafeArea(
          child: ListView(

              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text('  مرحبا بك في',textAlign: TextAlign.center
                          ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black),),
                        SizedBox(height: 10),
                        Text('جامعة الرشيد الذكية',textAlign: TextAlign.center
                          ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Color(0xfff3841b)),),
                      ],
                    ),
                    SizedBox(height: 20,),

                    Image.asset('assets/rasheed.jpg' ,width: 350,),
                    SizedBox(height: 70,),
                    SizedBox(
                        height: 60,
                        width: 330,
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
                              style: ElevatedButton.styleFrom(backgroundColor: Colors.white,
                                  minimumSize:Size(60,50),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  )),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPagera()));
                                // Navigator.push(context,MaterialPageRoute(builder: (context)=>HomePage()), );
                              }, child: Text('تسجيل دخول',  textAlign:TextAlign.right,
                              style: TextStyle(color: Colors.black,
                                fontSize: 21,fontWeight: FontWeight.bold,),
                            ),
                            )

                        )

                    ),
                    SizedBox(height: 20,),
                    SizedBox(
                        height: 60,
                        width: 330,
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
                              style: ElevatedButton.styleFrom(backgroundColor: Color(0xff012861,
                              ),
                                  minimumSize:Size(60,50),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  )),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpra()));
                                // Navigator.push(context,MaterialPageRoute(builder: (context)=>HomePage()), );
                              }, child: Text('انشاء حساب',  textAlign:TextAlign.right,
                              style: TextStyle(color: Colors.white,
                                fontSize: 21,fontWeight: FontWeight.bold,),
                            ),
                            )

                        )

                    ),

                  ],







                ),




              ]
          ),
          // body:
          //   Padding(padding:EdgeInsets.all(50.0),
          //  child:Row(
          //    mainAxisAlignment: MainAxisAlignment.center,
          //  children: [
          //     Container(
          //       height: 500,
          //         width: 500,
          //         decoration:BoxDecoration(
          //             borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),
          //             bottomRight: Radius.circular(50),topLeft: Radius.circular(50),topRight: Radius.circular(50),
          //             ),
          //             color: Color(0xff3498DB),
          //         image: DecorationImage(image:
          //         AssetImage("assets/yemen.png"),
          //
          //         ),
          //         ) ,
          //     ),
          //
          // ]  ),
          //      ) ,
          //



        ));






















  }
}