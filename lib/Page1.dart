import 'package:flutter/material.dart';
import 'transaction/trans1.dart';

class Page1 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
   return Column(
     children: [
       Container(
         height: 80,
         decoration: BoxDecoration(
           color: Colors.cyan,
             borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50)),
         ),


    child: Center(
      child: Text('المعاملات الجامعية',textAlign:TextAlign.center, style: TextStyle(
        color: Colors.white,fontSize: 25
      ),),


    ),

       ),

        ListView(
          padding: EdgeInsets.zero,
         children: [
         GestureDetector(
              onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => trans1()),
                );
              },
              child: Container(
                width: 240,
                height:50,
                decoration: BoxDecoration(
                    color: Color(0xff0073bf),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.5),spreadRadius: 5,blurRadius: 7,
                        offset: Offset(0,3),
                      )
                    ]
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,

                  children: [
                    SizedBox(height: 10),
                    Text('جامعة العلوم الحديثة',textAlign:TextAlign.right,
                      style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white,
                      ),),
                    SizedBox(width: 20,),
                  ],
                ),
              )
          ),


            SizedBox(height: 10,),
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => trans1()),
                  );
                },

                child: Container(
                  width: 240,
                  height:50,
                  decoration: BoxDecoration(
                      color: Color(0xff0073bf),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.5),spreadRadius: 5,blurRadius: 7,
                          offset: Offset(0,3),
                        )
                      ]
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,

                    children: [
                      SizedBox(height: 10),
                      Text('جامعة العلوم الحديثة',textAlign:TextAlign.right,
                        style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white,
                        ),),
                      SizedBox(width: 20,),
                    ],
                  ),
                )
            ),
            SizedBox(height: 10,),
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => trans1()),
                  );
                },

                child: Container(
                  width: 240,
                  height:50,
                  decoration: BoxDecoration(
                      color: Color(0xff0073bf),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.5),spreadRadius: 5,blurRadius: 7,
                          offset: Offset(0,3),
                        )
                      ]
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,

                    children: [
                      SizedBox(height: 10),
                      Text('جامعة العلوم الحديثة',textAlign:TextAlign.right,
                        style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white,
                        ),),
                      SizedBox(width: 20,),
                    ],
                  ),
                )
            ),
            SizedBox(height: 10,),
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => trans1()),
                  );
                },

                child: Container(
                  width: 240,
                  height:50,
                  decoration: BoxDecoration(
                      color: Color(0xff0073bf),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.5),spreadRadius: 5,blurRadius: 7,
                          offset: Offset(0,3),
                        )
                      ]
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,

                    children: [
                      SizedBox(height: 10),
                      Text('جامعة العلوم الحديثة',textAlign:TextAlign.right,
                        style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white,
                        ),),
                      SizedBox(width: 20,),
                    ],
                  ),
                )
            ),
            SizedBox(height: 10,),
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => trans1()),
                  );
                },

                child: Container(
                  width: 240,
                  height:50,
                  decoration: BoxDecoration(
                      color: Color(0xff0073bf),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.5),spreadRadius: 5,blurRadius: 7,
                          offset: Offset(0,3),
                        )
                      ]
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,

                    children: [
                      SizedBox(height: 10),
                      Text('جامعة العلوم الحديثة',textAlign:TextAlign.right,
                        style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white,
                        ),),
                      SizedBox(width: 20,),
                    ],
                  ),
                )
            ),
            SizedBox(height: 10,),
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => trans1()),
                  );
                },

                child: Container(
                  width: 240,
                  height:50,
                  decoration: BoxDecoration(
                      color: Color(0xff0073bf),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.5),spreadRadius: 5,blurRadius: 7,
                          offset: Offset(0,3),
                        )
                      ]
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,

                    children: [
                      SizedBox(height: 10),
                      Text('جامعة العلوم الحديثة',textAlign:TextAlign.right,
                        style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white,
                        ),),
                      SizedBox(width: 20,),
                    ],
                  ),
                )
            ),
            SizedBox(height: 10,),
            // GestureDetector(
            //     onTap: () {
            //       Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => trans1()),
            //       );
            //     },
            //
            //     child: Container(
            //       width: 240,
            //       height:50,
            //       decoration: BoxDecoration(
            //           color: Color(0xff0073bf),
            //           borderRadius: BorderRadius.circular(30),
            //           boxShadow: [
            //             BoxShadow(
            //               color: Colors.white.withOpacity(0.5),spreadRadius: 5,blurRadius: 7,
            //               offset: Offset(0,3),
            //             )
            //           ]
            //       ),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.end,
            //
            //         children: [
            //           SizedBox(height: 10),
            //           Text('جامعة العلوم الحديثة',textAlign:TextAlign.right,
            //             style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white,
            //             ),),
            //           SizedBox(width: 20,),
            //         ],
            //       ),
            //     )
            // ),
            // SizedBox(height: 10,),
            // GestureDetector(
            //     onTap: () {
            //       Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => trans1()),
            //       );
            //     },
            //
            //     child: Container(
            //       width: 240,
            //       height:50,
            //       decoration: BoxDecoration(
            //           color: Color(0xff0073bf),
            //           borderRadius: BorderRadius.circular(30),
            //           boxShadow: [
            //             BoxShadow(
            //               color: Colors.white.withOpacity(0.5),spreadRadius: 5,blurRadius: 7,
            //               offset: Offset(0,3),
            //             )
            //           ]
            //       ),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.end,
            //
            //         children: [
            //           SizedBox(height: 10),
            //           Text('جامعة العلوم الحديثة',textAlign:TextAlign.right,
            //             style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white,
            //             ),),
            //           SizedBox(width: 20,),
            //         ],
            //       ),
            //     )
            // ),
            // SizedBox(height: 10,),
            // GestureDetector(
            //     onTap: () {
            //       Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => trans1()),
            //       );
            //     },
            //
            //     child: Container(
            //       width: 240,
            //       height:50,
            //       decoration: BoxDecoration(
            //           color: Color(0xff0073bf),
            //           borderRadius: BorderRadius.circular(30),
            //           boxShadow: [
            //             BoxShadow(
            //               color: Colors.white.withOpacity(0.5),spreadRadius: 5,blurRadius: 7,
            //               offset: Offset(0,3),
            //             )
            //           ]
            //       ),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.end,
            //
            //         children: [
            //           SizedBox(height: 10),
            //           Text('جامعة العلوم الحديثة',textAlign:TextAlign.right,
            //             style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white,
            //             ),),
            //           SizedBox(width: 20,),
            //         ],
            //       ),
            //     )
            // ),
            // SizedBox(height: 10,),
            // GestureDetector(
            //     onTap: () {
            //       Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => trans1()),
            //       );
            //     },
            //
            //     child: Container(
            //       width: 240,
            //       height:50,
            //       decoration: BoxDecoration(
            //           color: Color(0xff0073bf),
            //           borderRadius: BorderRadius.circular(30),
            //           boxShadow: [
            //             BoxShadow(
            //               color: Colors.white.withOpacity(0.5),spreadRadius: 5,blurRadius: 7,
            //               offset: Offset(0,3),
            //             )
            //           ]
            //       ),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.end,
            //
            //         children: [
            //           SizedBox(height: 10),
            //           Text('جامعة العلوم الحديثة',textAlign:TextAlign.right,
            //             style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white,
            //             ),),
            //           SizedBox(width: 20,),
            //         ],
            //       ),
            //     )
            // ),
      ]  ),
],









   );
  }
}

// child:  Align(alignment:Alignment.centerLeft,
// child:
// IconButton(onPressed: (){
// Navigator.of(context).pop();
// },
// icon: Icon(Icons.arrow_back_ios),),
// ),