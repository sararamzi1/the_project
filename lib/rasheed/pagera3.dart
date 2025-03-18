import 'package:flutter/material.dart';
import 'package:trying/drawer/drawer4.dart';
import 'ratransaction/ratrans4.dart';
import 'ratransaction/ratrans5.dart';
import 'ratransaction/ratrans6.dart';
import 'ratransaction/ratrans7.dart';
class Pagera3 extends StatelessWidget{
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
                      style: ElevatedButton.styleFrom(backgroundColor: Color(0xff012861,
                      ),
                          minimumSize:Size(220,50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          )),
                      onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>ratrans4()), );
                      }, child: Text('استمارة انسحاب من الدراسة',  textAlign:TextAlign.right,
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
                      style: ElevatedButton.styleFrom(backgroundColor: Color(0xff012861,
                      ),
                          minimumSize:Size(220,50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          )),
                      onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>ratrans5()), );
                      }, child: Text('استمارة طلب وقف قيد',  textAlign:TextAlign.right,
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
                      style: ElevatedButton.styleFrom(backgroundColor: Color(0xff012861,
                      ),
                          minimumSize:Size(220,50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          )),
                      onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>ratrans6()), );
                      }, child: Text('استمارة تحويل داخلي',  textAlign:TextAlign.right,
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
                      style: ElevatedButton.styleFrom(backgroundColor: Color(0xff012861,
                      ),
                          minimumSize:Size(220,50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          )),
                      onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>ratrans7()), );
                      }, child: Text('استمارة تحويل تخصص لطالب مستجد',  textAlign:TextAlign.right,
                      style: TextStyle(color: Colors.white,
                        fontSize: 18,fontWeight: FontWeight.normal,),
                    ),
                    )
                )
            ),]
        // );
        // }),
        // ) ],







      ),
    );
  }

}