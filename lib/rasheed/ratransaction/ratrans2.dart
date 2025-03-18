import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart'as http;
class ratrans2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff012861),
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        },
          icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black,),),
        title: Text('استمارة تسجيل مقررات دراسية', textAlign: TextAlign.right,
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
  final TextEditingController langController = TextEditingController();
  final TextEditingController levelController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController yearController = TextEditingController();
  final TextEditingController termController = TextEditingController();
  final TextEditingController schedController = TextEditingController();
  Future<void> sendData() async {
    final response = await http.post(
      Uri.parse('http://عنوان_الجهاز:رقم_المنفذ/api/projects'), // استبدل بالعنوان الصحيح
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        'name': nameController.text,
        'coullege': coullegeController.text,
        'type': typeController.text,
        'lang':langController.text,
        'level':levelController,
        'number':numberController,
        'year':yearController,
        'term':termController,
        'scheduled':schedController,
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
          Text(':الكلية', style: TextStyle(fontSize: 16)),
          TextField(
            controller: coullegeController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'أدخل الكلية',
            ),
          ),
          SizedBox(height: 16),
          Text(':التخصص', style: TextStyle(fontSize: 16)),
          TextField(
            controller: typeController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'أدخل التخصص',
            ),
          ),
          SizedBox(height: 16),
          Text(':لغة الدراسة', style: TextStyle(fontSize: 16)),
          TextField(
            controller: langController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'عربي/انجليزي',
            ),
          ),
          SizedBox(height: 16),
          Text(':مستوى', style: TextStyle(fontSize: 16)),
          TextField(
            controller: levelController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'أدخل المستوى',
            ),
          ),
          SizedBox(height: 16),

          Text(':الفصل', style: TextStyle(fontSize: 16)),
          TextField(
            controller: termController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'أدخل الفصل',
            ),
          ),
          SizedBox(height: 16),

          Text(':رقم القيد', style: TextStyle(fontSize: 16)),
          TextField(
            controller: numberController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'أدخل الفصل',
            ),
          ),
          SizedBox(height: 16),

          Text(':المقررات المطلوب تسجيلها', style: TextStyle(fontSize: 16)),
          TextField(
            controller:schedController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
            maxLines: 6,
          ),
          SizedBox(height: 16),
          Text(':لعام', style: TextStyle(fontSize: 16)),
          TextField(
            controller: yearController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'ادخل عام التحويل',
            ),
          ),
          SizedBox(height: 20),

          Center(
            child:  ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Color(0xfff3841b,
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
        ],
      ),
    );
  }
}
