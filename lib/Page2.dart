import 'package:flutter/material.dart';
import 'package:trying/drawer/drawer4.dart';
import 'transaction/trans1.dart';
import 'transaction/trans2.dart';
import 'transaction/trans3.dart';
import 'transaction/trans4.dart';
class Page2 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        },
          icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black,),),
      ),
      body: ListView(
      children: [
        Padding(padding: const EdgeInsets.only(top: 105,right: 60,left: 60),
            child: Container(
                width: 280,
                padding: EdgeInsets.only(top: 1,left: 1.5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border:Border(
                      bottom: BorderSide(color: Colors.black),
                      top: BorderSide(color: Colors.black),
                      left: BorderSide(color: Colors.black),
                      right: BorderSide(color: Colors.black),
                    )

                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Color(0xff6d2932,
                  ),
                      minimumSize:Size(220,50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      )),
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>trans1()), );
                  }, child: Text('استمارة اختيار مشروع التخرج',  textAlign:TextAlign.right,
                  style: TextStyle(color: Colors.white,
                    fontSize: 18,fontWeight: FontWeight.normal,),
                ),
                )
            )
        ),
      SizedBox(height: 6,),
        Padding(padding: const EdgeInsets.only(top: 30,right: 60,left: 60),
            child: Container(
                width: 280,
                padding: EdgeInsets.only(top: 1,left: 1.5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border:Border(
                      bottom: BorderSide(color: Colors.black),
                      top: BorderSide(color: Colors.black),
                      left: BorderSide(color: Colors.black),
                      right: BorderSide(color: Colors.black),
                    )

                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Color(0xff6d2932,
                  ),
                      minimumSize:Size(220,50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      )),
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>trans2()), );
                  }, child: Text('استمارة سحب الوثائق بعد التخرج',  textAlign:TextAlign.right,
                  style: TextStyle(color: Colors.white,
                    fontSize: 18,fontWeight: FontWeight.normal,),
                ),
                )
            )
        ),
        SizedBox(height: 6,),
        Padding(padding: const EdgeInsets.only(top: 30,right: 60,left: 60),
            child: Container(
                width: 280,
                padding: EdgeInsets.only(top: 1,left: 1.5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border:Border(
                      bottom: BorderSide(color: Colors.black),
                      top: BorderSide(color: Colors.black),
                      left: BorderSide(color: Colors.black),
                      right: BorderSide(color: Colors.black),
                    )

                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Color(0xff6d2932,
                  ),
                      minimumSize:Size(220,50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      )),
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>trans3()), );
                  }, child: Text('استمارة استكمال متطلبات شهادة التخرج',  textAlign:TextAlign.right,
                  style: TextStyle(color: Colors.white,
                    fontSize: 18,fontWeight: FontWeight.normal,),
                ),
                )
            )
        ),
        SizedBox(height: 6,),
        Padding(padding: const EdgeInsets.only(top: 30,right: 60,left: 60),
            child: Container(
                width: 280,
                padding: EdgeInsets.only(top: 1,left: 1.5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border:Border(
                      bottom: BorderSide(color: Colors.black),
                      top: BorderSide(color: Colors.black),
                      left: BorderSide(color: Colors.black),
                      right: BorderSide(color: Colors.black),
                    )

                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Color(0xff6d2932,
                  ),
                      minimumSize:Size(220,50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      )),
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>trans4()), );
                  }, child: Text('طلب افادة تخرج',  textAlign:TextAlign.right,
                  style: TextStyle(color: Colors.white,
                    fontSize: 18,fontWeight: FontWeight.normal,),
                ),
                )
            )
        ),
      ]
          // );
      // }),
      // ) ],







      ),
    );
  }

}