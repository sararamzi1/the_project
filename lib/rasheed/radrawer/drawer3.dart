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
              TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Color(0xfff3841b)),)
          ) ,
          SizedBox(height: 13,),
          Align(
              alignment: Alignment.centerRight,
              child:   Text('تأسست جامعة الرشيد الذكية في العام الجامعي 2021-2022 بموجب قرار وزير التعليم العالي والبحث العلمي رقم (70) وتاريخ 1/9/2021. ويأتي هذا التقرير وقد أكملت الجامعة عامها الثاني الذي كان حافلاً بالتطوير والتحسين وتنفيذ الأنشطة المتنوعة في جميع البرامج الأكاديمية، وهي تخطو خطىً ثابتة وراسخة في طريق تجويد التعليم الجامعي وتحسينه من خلال توفير تعليم نوعي وبنية تحتية متقدمة وبيئة تعليمية محفزة، كل ذلك بُغية تخريج كوادر مؤهلة تخدم المجتمع وتكون ملبية لاحتياجات سوق العمل المحلي والإقليمي وخلال عامها الثاني استحدثت الجامعة برامج أكاديمية وراجعت برامج أخرى، وأقامت شراكات مع جهات محلية في مختلف المجالات، ونفذت العديد من الأنشطة التعليمية الصفية واللاصفية ',textAlign:TextAlign.right,style:
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
              TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Color(0xfff3841b)),)
          ) ,
          SizedBox(height: 8,),
          Align(
              alignment: Alignment.centerRight,
              child:   Text('ٔان تصبح رائدة محلياً وإقليمياً في رفد المجتمع بكوادر مؤهلة للعمل، وتقديم معرفة رصينة وهادفة ',textAlign:TextAlign.right,style:
              TextStyle(fontSize: 18,color:(Colors.black)),)
          ) ,
          SizedBox(height: 25,),
          Align(
              alignment: Alignment.centerRight,
              child:   Text(' :رسالة الجامعة',textAlign:TextAlign.right,style:
              TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Color(0xfff3841b)),)
          ) ,
          SizedBox(height: 8,),
          Align(
              alignment: Alignment.centerRight,
              child:   Text(' جامعة الرشيد الذكية هي جامعة أهلية تقدم خدمة تعليمية رائدة ترتكز على بنية تحتية حديثة وبيئة تعليمية تحفز على استخدام المنهج العلمي، وتطبيق المهارات المهنية، وغرس القيم الإيجابية، وتوفر خدمة بحثية ومجتمعية متميزة، بما يسهم في تحقيق التنمية المستدامة',textAlign:TextAlign.right,style:
              TextStyle(fontSize: 18,color:(Colors.black)),)
          ) ,
        ],

      ),
    );
  }}