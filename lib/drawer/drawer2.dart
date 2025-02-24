import 'package:flutter/material.dart';

class drawer2 extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        },
          icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black,),),

      ),

      body:Column(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Align(
        alignment: Alignment.centerRight,
        child:   Text(' :الوثائق المطلوبة لعملية القبول والتسجيل بالجامعة',textAlign:TextAlign.right,style:
            TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Color(0xff6d2932)),)
        ) ,
        SizedBox(height: 5,),
      Align(
        alignment: Alignment.centerRight,
        child: Text('  اصل استمارة الثانوية العامة -'
            ,style: TextStyle(
            fontSize: 20,color: Colors.black,
          ),)
      )  ,
        SizedBox(height: 2,),
          Align(
              alignment: Alignment.centerRight,
              child: Text('   صورتين طبق الاصل للثانوية- '
                ,style: TextStyle(
                  fontSize: 20,color: Colors.black,
                ),)
          ),
          SizedBox(height: 5,),
          Align(
              alignment: Alignment.centerRight,
              child: Text('  صورتين طبق الاصل للثانوية- '
                ,style: TextStyle(
                  fontSize: 20,color: Colors.black,
                ),)
          ),
          SizedBox(height: 5,),
          Align(
              alignment: Alignment.centerRight,
              child: Text('  ثمان صور فوتوغرافية(4*6) خلفية بيضاء - '
                ,style: TextStyle(
                  fontSize: 20,color: Colors.black,
                ),)
          ),
          SizedBox(height: 5,),
          Align(
              alignment: Alignment.centerRight,
              child: Text(' الرسوم المالية المستحق دفعها (سند رسوم التسجيل)-'
                ,style: TextStyle(
                  fontSize: 20,color: Colors.black,
                ),)
          ),
          SizedBox(height: 40,),
          Align(
              alignment: Alignment.centerRight,
              child:   Text(' :الوثائق الصادرة من خارج الجمهورية اليمنية',textAlign:TextAlign.right,style:
              TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Color(0xff6d2932)),)
          ) ,
          SizedBox(height: 5,),
          Align(
              alignment: Alignment.centerRight,
              child: Text('  : الثانوية العامة الصادرة من خارج الوطن، يجب ان تكون معمدة من الجهات ذات العلاقة'
                ,style: TextStyle(
                  fontSize: 20,color: Colors.black,
                ),)
          ),
          SizedBox(height: 8,),
          Align(
              alignment: Alignment.centerRight,
              child: Text('  سفارة الجمهورية اليمنية في بلد الاصدار-'
                ,style: TextStyle(
                  fontSize: 20,color: Colors.black,
                ),)
          ),
          SizedBox(height: 5,),
          Align(
              alignment: Alignment.centerRight,
              child: Text('  مكتب الشئون الخارجية في الجمهورية اليمنية-'
                ,style: TextStyle(
                  fontSize: 20,color: Colors.black,
                ),)
          ),
          SizedBox(height: 5,),
          Align(
              alignment: Alignment.centerRight,
              child: Text('  معادلة الثانوية في كنترول التربية والتعليم -'
                ,style: TextStyle(
                  fontSize: 20,color: Colors.black,
                ),)
          ),
        ],


        
      ),

      
      );
      
   
  }
}