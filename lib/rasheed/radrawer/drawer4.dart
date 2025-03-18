import 'package:flutter/material.dart';

class drawer4 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
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
                child: Text(
                  ' :معاييرالتنسيق ', textAlign: TextAlign.right,
                  style:
                  TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Color(0xfff3841b)),),
              ),
              SizedBox(height: 5,),
              Align(
                  alignment: Alignment.centerRight,
                  child: Text('النسب المئوية في الثانوية العامة-'
                    ,style: TextStyle(
                      fontSize: 20,color: Colors.black,
                    ),)
              ),
              SizedBox(height: 5,),
              Align(
                  alignment: Alignment.centerRight,
                  child: Text('اختبارات القبول العامة أو الجزئية-'
                    ,style: TextStyle(
                      fontSize: 20,color: Colors.black,
                    ),)
              ),
              SizedBox(height: 5,),
              Align(
                  alignment: Alignment.centerRight,
                  child: Text('اختبار تحديد المستوى في اللغة اإلنجليزية-'
                    ,style: TextStyle(
                      fontSize: 20,color: Colors.black,
                    ),)
              ),
              SizedBox(height: 5,),
              Align(
                  alignment: Alignment.centerRight,
                  child: Text('المقابلة الشخصية-'
                    ,style: TextStyle(
                      fontSize: 20,color: Colors.black,
                    ),)
              ),
              SizedBox(height: 5,),
              Align(
                  alignment: Alignment.centerRight,
                  child: Text('للطلبة الغير يمنيين يشترط اضافة صورة الجواز-'
                    ,style: TextStyle(
                      fontSize: 20,color: Colors.black,
                    ),)
              ),
              Divider(),
              SizedBox(height: 10,),
              Align(
                  alignment: Alignment.centerRight,
                  child: Text(' :معدلات القبول للعام الجامعي 2024-2025م',textAlign: TextAlign.right,
                    style:
                    TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Color(0xfff3841b)),),

              ),
              SizedBox(height: 13,),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  ' كلية العلوم الطبية', textAlign: TextAlign.right,
                  style:
                  TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Color(0xfff3841b)),),
              ),
              SizedBox(height: 13,),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  ' :الصيدلة', textAlign: TextAlign.right,
                  style:
                  TextStyle(fontSize: 20,
                      color: Colors.black),),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  ' (معدل القبول لتخصص الصيدلة 70 % علمي )', textAlign: TextAlign.right,
                  style:
                  TextStyle(fontSize: 20,
                      color: Colors.black),),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  '  بكالوريوس صيدلة-', textAlign: TextAlign.right,
                  style:
                  TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),),
              ),


              SizedBox(height: 30,),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  ' :الطب المخبري', textAlign: TextAlign.right,
                  style:
                  TextStyle(fontSize: 20,
                      color: Colors.black),),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  ' (معدل القبول لتخصص الطب المخبري 65 % علمي )', textAlign: TextAlign.right,
                  style:
                  TextStyle(fontSize: 20,
                      color: Colors.black),),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  ' بكالوريوس طب مخبري-', textAlign: TextAlign.right,
                  style:
                  TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),),
              ),
              Divider(),
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'كلية الهندسة وتكنولوجيا المعلومات', textAlign: TextAlign.right,
                  style:
                  TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Color(0xfff3841b)),),
              ),
              SizedBox(height: 13,),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  ' :الهندسة', textAlign: TextAlign.right,
                  style:
                  TextStyle(fontSize: 20,
                      color: Colors.black),),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  '(معدل القبول لكل تخصصات برامج الهندسة 65% علمي )', textAlign: TextAlign.right,
                  style:
                  TextStyle(fontSize: 20,
                      color: Colors.black),),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'هندسة معمارية-', textAlign: TextAlign.right,
                  style:
                  TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),),
              ),
              SizedBox(height: 8,),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'هندسة التصميم الداخلي-', textAlign: TextAlign.right,
                  style:
                  TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),),
              ),
              SizedBox(height: 8,),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'هندسة الحاسوب-', textAlign: TextAlign.right,
                  style:
                  TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),),
              ),
              SizedBox(height: 8,),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'هندسة الإتصالات والالكترونيات', textAlign: TextAlign.right,
                  style:
                  TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),),
              ),

              SizedBox(height: 30,),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  ' :الحاسوب وتكنولوجيا المعلومات', textAlign: TextAlign.right,
                  style:
                  TextStyle(fontSize: 20,
                      color: Colors.black),),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  '(معدل القبول لكل تخصصات الحاسوب وتكنولوجيا المعلومات 60% علمي )', textAlign: TextAlign.right,
                  style:
                  TextStyle(fontSize: 20,
                      color: Colors.black),),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'تقنية معلومات IT  (معدل القبول 55%)-', textAlign: TextAlign.right,
                  style:
                  TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),),
              ),
              SizedBox(height: 8,),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'نظم المعلومات الحاسوبية-', textAlign: TextAlign.right,
                  style:
                  TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),),
              ),
              SizedBox(height: 8,),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'جرافيكس وملتيميديا-', textAlign: TextAlign.right,
                  style:
                  TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),),
              ),
              SizedBox(height: 8,),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'الامن السبراني والشبكات-', textAlign: TextAlign.end,
                  style:
                  TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),),
              ),
//00
              Divider(),
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'كلية العلوم الإدارية والانسانية', textAlign: TextAlign.right,
                  style:
                  TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Color(0xfff3841b)),),
              ),
              SizedBox(height: 13,),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  ' :العلوم الادارية', textAlign: TextAlign.right,
                  style:
                  TextStyle(fontSize: 20,
                      color: Colors.black),),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  '(معدل القبول لكل تخصصات العلوم الادارية 50% )', textAlign: TextAlign.right,
                  style:
                  TextStyle(fontSize: 20,
                      color: Colors.black),),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'محاسبة-', textAlign: TextAlign.right,
                  style:
                  TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),),
              ),
              SizedBox(height: 8,),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'إدارة أعمال دولية - باللغة الانجليزية (معدل القبول 55%)-', textAlign: TextAlign.right,
                  style:
                  TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),),
              ),
              SizedBox(height: 8,),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'إدارة أعمال-', textAlign: TextAlign.right,
                  style:
                  TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),),
              ),
              SizedBox(height: 8,),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'تسويق-', textAlign: TextAlign.right,
                  style:
                  TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),),
              ),
              SizedBox(height: 8,),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'نظم معلومات ادارية  (معدل القبول 55%)-', textAlign: TextAlign.right,
                  style:
                  TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),),
              ),
              SizedBox(height: 8,),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'علوم مالية ومصرفية-', textAlign: TextAlign.right,
                  style:
                  TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),),
              ),

              SizedBox(height: 30,),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  ' :العلوم الإنسانية', textAlign: TextAlign.right,
                  style:
                  TextStyle(fontSize: 20,
                      color: Colors.black),),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  ' :اللغات', textAlign: TextAlign.right,
                  style:
                  TextStyle(fontSize: 20,
                      color: Colors.black),),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  '(معدل القبول لتخصص اللغات 50% )', textAlign: TextAlign.right,
                  style:
                  TextStyle(fontSize: 20,
                      color: Colors.black),),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'لغة انجليزية وادابها-', textAlign: TextAlign.right,
                  style:
                  TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),),
              ),

              SizedBox(height: 30,),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  ' :الصحافة والاعلام', textAlign: TextAlign.right,
                  style:
                  TextStyle(fontSize: 20,
                      color: Colors.black),),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  '(معدل القبول لكل تخصصات الصحافة والاعلام 55% )', textAlign: TextAlign.right,
                  style:
                  TextStyle(fontSize: 20,
                      color: Colors.black),),
              ),
              SizedBox(height: 8,),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'إعلام علاقات عامة -', textAlign: TextAlign.right,
                  style:
                  TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),),
              ),
              SizedBox(height: 8,),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'إعلام إذاعة وتلفزيون -', textAlign: TextAlign.right,
                  style:
                  TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),),
              ),
              SizedBox(height: 8,),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'صحافة -', textAlign: TextAlign.right,
                  style:
                  TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),),
              ),




            ]));
  }}