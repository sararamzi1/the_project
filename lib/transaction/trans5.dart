import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart'as http;
class trans5 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6d2932),
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        },
          icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black,),),
        title: Text('استمارة طلب حالة', textAlign: TextAlign.right,
          style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold,),),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: DataForm(),
      ),
    );


  }
}
class DataForm extends StatefulWidget {
  @override
  _DataFormState createState() => _DataFormState();

}

class _DataFormState extends State<DataForm> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController coullegeController = TextEditingController();
  final TextEditingController typeController = TextEditingController();
  final TextEditingController levelController = TextEditingController();
  final TextEditingController yearController = TextEditingController();


  Future<void> sendData() async {
    final response = await http.post(
      Uri.parse('http://عنوان_الجهاز:رقم_المنفذ/api/projects'), // استبدل بالعنوان الصحيح
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        'name': nameController.text,
        'year': int.parse(yearController.text),
        'coullege': coullegeController.text,
        'type': typeController.text,
        'level':levelController.text,
      }),
    );

    if (response.statusCode == 200) {
      _showDialog('تم الإرسال! سيتم الرد عليك في أقرب وقت.');
    } else {
      _showDialog('حدث خطأ أثناء الإرسال. حاول مرة أخرى.');
    }
  }

  void _showDialog(String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('تنبيه'),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: Text('موافق'),
              onPressed: () {
                Navigator.of(context).pop(); // إغلاق الحوار
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(':الاسم ', style: TextStyle(fontSize: 16)),
              TextField(
                controller: nameController,
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'أدخل الاسم',
                ),
              ),
              SizedBox(height: 16),
              Text(':الكلية ', style: TextStyle(fontSize: 16)),
              TextField(
                controller: coullegeController,
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'أدخل الكلية',
                ),
              ),
              SizedBox(height: 16),
              Text(':التخصص ', style: TextStyle(fontSize: 16)),
              TextField(
                controller: typeController,
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'أدخل التخصص',
                ),
              ),
              SizedBox(height: 16),
              Text(':المستوى ', style: TextStyle(fontSize: 16)),
              TextField(
                controller: levelController,
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'أدخل المستوى',
                ),
              ),
              SizedBox(height: 16),
              Text(':عام الالتحاق ', style: TextStyle(fontSize: 16)),
              TextField(
                controller: yearController,
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),

                ),
              ),
              SizedBox(height: 10,),
              Text(':ارغب في', style: TextStyle(fontSize: 30,
                  color: Color(0xff6d2932),
                  fontWeight: FontWeight.bold),),

SizedBox(height: 10,),
              CheckBoxWithTextFieldScreen(),
              SizedBox(height: 10,),
              Center(
                child:  ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Color(0xffe4ad1d,
                  ),
                      minimumSize:Size(220,50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      )),
                  onPressed: (){
                    // Navigator.push(context,MaterialPageRoute(builder: (context)=>HomePage()), );
                  }, child: Text('ارسال',  textAlign:TextAlign.right,
                  style: TextStyle(color: Colors.white,
                    fontSize: 18,fontWeight: FontWeight.normal,),
                ),
                ),
              ),
            ]),

    );
  }}

class CheckBoxWithTextFieldScreen extends StatefulWidget {
  @override
  _CheckBoxWithTextFieldScreenState createState() => _CheckBoxWithTextFieldScreenState();
}

class _CheckBoxWithTextFieldScreenState extends State<CheckBoxWithTextFieldScreen> {
  int?selectedIndex;
  List<bool> checkBoxValues = List.generate(8, (index) => false); // 8 عناصر
  List<TextEditingController> controllers1 =
  List.generate(8, (index) => TextEditingController()); // 8 عناصر
  List<TextEditingController> controllers2 =
  List.generate(8, (index) => TextEditingController()); // 8 عناصر

  List<String> firstTexts = [
    "العودة الى الدراسة لانقطاعي عن الجامعة من العام",
    "شهادة قيد او افادة",
    "بيان درجات للمستوى",
    "اعادة القيد",
    "تحويل الفترة الدراسية من",
    "الانسحاب من الدراسة",
    "التحويل من كلية",
    "التحويل من تخصص",
  ];

  List<String?> middleTexts = [
    "إلى",  // الخيار الأول
    "",   // الخيار الثاني
    "و", // الخيار الثالث
    "",   // الخيار الرابع
    "الى",  // الخيار الخامس
    "", // الخيار السادس
    "الى",  // الخيار السابع
    "إلى", // الخيار الثامن
  ];

  // تحديد الحقول النصية في القسم الأول والثاني
  List<bool> hasTextField2 = [true, false, true, false, true, false, true, true]; // 8 عناصر
  List<bool> hasTextField1 = [true, false, true, false, true, false, true, true];
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: List.generate(8, (index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             Radio<int>(
                value: index,
                groupValue: selectedIndex,
                onChanged: (int? newValue) {
                  setState(() {
                    selectedIndex=newValue;
                  });
                },
              ),
              SizedBox(width: 10),
              // إذا كان يوجد TextField في القسم الأول، نعرضه
              if (hasTextField1[index])
                Expanded(
                  child: TextField(
                    textAlign: TextAlign.right,
                    controller: controllers1[index],
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),


              // إذا لم يكن يوجد TextField، نعرض فقط النص
              if (!hasTextField1[index])
                Text(
                  "",
                  style: TextStyle(fontSize: 16),
                ),
              SizedBox(width: 10),
               Text(
              middleTexts[index]!,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),textAlign: TextAlign.end,
            ),
              SizedBox(width: 10),
              // إذا كان يوجد TextField في القسم الثاني، نعرضه
              if (hasTextField2[index])
                Expanded(
                  child: TextField(
                    textAlign: TextAlign.right,
                    controller: controllers2[index],
                    decoration: InputDecoration(

                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              // إذا لم يكن يوجد TextField، نعرض فقط النص
              if (!hasTextField2[index])
                Text(
                  "",
                  style: TextStyle(fontSize: 16),
                ),
              SizedBox(width: 10),
              Expanded(child: Text(
                firstTexts[index],
                style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                textAlign: TextAlign.end,
              ),),
              SizedBox(height: 10,),

            ],

          ),

        );
      }),

    );

  }
}