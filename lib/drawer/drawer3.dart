import 'package:flutter/material.dart';

class drawer3 extends StatelessWidget{
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
          Align(
              alignment: Alignment.centerRight,
              child:   Text(' :نبذة تعريفية عن الجامعة',textAlign:TextAlign.right,style:
              TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Color(0xff6d2932)),)
          ) ,
SizedBox(height: 13,),
          Align(
              alignment: Alignment.centerRight,
              child:   Text(' - جامعة العلوم الحديثة جامعة أهلية أنشئت بموجب التصريح من وزارة التعليم العالي والبحث العلمي تلبية للطلب\n المتزايد على التعليم في مختلف التخصصات، وشعوراً منها بأن الإنسان ركيزة أساسية في التنمية الاقتصادية \nوالاجتماعية في جوانبها المختلفة',textAlign:TextAlign.right,style:
              TextStyle(fontSize: 18,color:(Colors.black)),)
          ) ,
          SizedBox(height: 13,),
          Align(
              alignment: Alignment.centerRight,
              child:   Text('-  توفر الجامعة لطلابها بيئة أكاديمية ملائمة وذلك باستخدام وسائل التكنولوجيا الحديثة والكادر الأكاديمي المحلي\n والأجنبي الكفؤ والمؤهل تأهيلاً عالياً وذات الخبرة الطويلة، وتسخر كافة إمكانياتها المتاحة لخدمة العملية التعليمية\n كما تهتم الجامعة بالجانب التطبيقي والنظري، وتسعى إلى النجاح الأكيد في عصر أصبح فيه العالم قرية صغيرة\n وبات العلم أساس النهضة ولبنة البناء والعمران   ',textAlign:TextAlign.right,style:
              TextStyle(fontSize: 18,color:(Colors.black)),)
          ) ,
          SizedBox(height: 25,),
          Align(
              alignment: Alignment.centerRight,
              child:   Text(' :رؤية الجامعة',textAlign:TextAlign.right,style:
              TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Color(0xff6d2932)),)
          ) ,
          SizedBox(height: 8,),
          Align(
              alignment: Alignment.centerRight,
              child:   Text(' التميز والريادة محلياً وإقليميا، في الخدمات التعليمية ومخرجات التعليم وخدمة المجتمع وتنميته',textAlign:TextAlign.right,style:
              TextStyle(fontSize: 18,color:(Colors.black)),)
          ) ,
          SizedBox(height: 25,),
          Align(
              alignment: Alignment.centerRight,
              child:   Text(' :رسالة الجامعة',textAlign:TextAlign.right,style:
              TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Color(0xff6d2932)),)
          ) ,
          SizedBox(height: 8,),
          Align(
              alignment: Alignment.centerRight,
              child:   Text(' تسعى جامعة العلوم الحديثة لتقديم برامج وبحوث أكاديمية متميزة على المستوى المحلي والإقليمي، تسهم في\n جودة التعليم وإنتاج المعرفة وتنمية المجتمع، من خلال؛ توفير بيئة محفزة للتعليم والإبداع، وشراكات فاعلة مع \nالجهات ذات العلاقة، وبرامج وخطط دراسية متطورة، لإعداد خريجين متخصصين، مزودين بالمعارف والمهارات\nوفق معايير الاعتماد الأكاديمي وضمان الجودة',textAlign:TextAlign.right,style:
              TextStyle(fontSize: 18,color:(Colors.black)),)
          ) ,
        ],

      ),
    );
  }}