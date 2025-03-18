import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart'as http;
class trans3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6d2932),
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        },
          icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black,),),
        title: Text('(انجليزي+عربي)استمارة استكمال متطلبات شهادة التخرج', textAlign: TextAlign.right,
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
  final TextEditingController numController = TextEditingController();
  final TextEditingController coullegeController = TextEditingController();
  final TextEditingController typeController = TextEditingController();
  final TextEditingController yearController = TextEditingController();
  final TextEditingController year2Controller = TextEditingController();
  final TextEditingController seanController = TextEditingController();

  Future<void> sendData() async {
    final response = await http.post(
      Uri.parse('http://عنوان_الجهاز:رقم_المنفذ/api/projects'), // استبدل بالعنوان الصحيح
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        'name': nameController.text,
        'num': int.parse(numController.text),
        'coullege': coullegeController.text,
        'type': typeController.text,
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
          Text(':الاسم بالعربي', style: TextStyle(fontSize: 16)),
          TextField(
            controller: nameController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'أدخل الاسم',
            ),
          ),
          SizedBox(height: 16),

          Text('الاسم بالانجليزي', style: TextStyle(fontSize: 16)),
          TextField(
            controller: numController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'enter your name',
            ),
            keyboardType: TextInputType.number,
          ),
          SizedBox(height:10),
          Text('ملاحظة:يجب أن يكون الاسم مطابق لوثيقة جواز السفر ان وجد',style: TextStyle(decoration: TextDecoration.underline,
          decorationColor: Colors.amber,decorationThickness: 3,color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
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

          Text(':الرقم الاكاديمي', style: TextStyle(fontSize: 16)),
          TextField(
            controller: yearController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'ادخل الرقم',
            ),

          ),
          SizedBox(height: 16),

          Text(':عام التخرج', style: TextStyle(fontSize: 16)),
          TextField(
            controller: year2Controller,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'ادخل العام',
            ),

          ),
          SizedBox(height: 16),

          Text(':دور التخرج', style: TextStyle(fontSize: 16)),
          TextField(
            controller: seanController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'أدخل الدور',
            ),
              ),
            SizedBox(height: 16),

            Text(':رقم الجوال للتواصل', style: TextStyle(fontSize: 16)),
            TextField(
              controller: seanController,
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'أدخل رقم جوالك',
              ),

          ),
          SizedBox(height: 20),

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
        ],
      ),
    );
  }
}
