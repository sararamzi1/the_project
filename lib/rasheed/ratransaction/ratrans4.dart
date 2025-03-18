import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart'as http;
class ratrans4 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff012861),
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        },
          icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black,),),
        title: Text('استمارة انسحاب من الدراسة', textAlign: TextAlign.right,
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
  final TextEditingController genderController = TextEditingController();
  final TextEditingController yearController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController numController = TextEditingController();
  final TextEditingController coullegeController = TextEditingController();
  final TextEditingController specController = TextEditingController();
  final TextEditingController levelController = TextEditingController();
  final TextEditingController classController = TextEditingController();
  final TextEditingController year2Controller = TextEditingController();
  final TextEditingController statusController = TextEditingController();
  final TextEditingController kindController = TextEditingController();
  final TextEditingController reasonController = TextEditingController();
  final TextEditingController date2Controller = TextEditingController();
  Future<void> sendData() async {
    final response = await http.post(
      Uri.parse('http://عنوان_الجهاز:رقم_المنفذ/api/projects'), // استبدل بالعنوان الصحيح
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        'name': nameController.text,
        'gender': genderController.text,
        'year': yearController.text,
        'date':dateController.text,
        'num':numController,
        'coullege':coullegeController,
        'specialize':specController,
        'level':levelController,
        'class':classController,
        'year2':year2Controller,
        'status':statusController,
        'kind':kindController,
        'reason':reasonController,
        'date2':date2Controller,
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
          Text(':الجنسية', style: TextStyle(fontSize: 16)),
          TextField(
            controller:genderController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'أدخل جنسيتك',
            ),
          ),
          SizedBox(height: 16),
          Text(':عام الالتحاق', style: TextStyle(fontSize: 16)),
          TextField(
            controller: yearController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),
          Text(':تاريخ التسجيل بالجامعة', style: TextStyle(fontSize: 16)),
          TextField(
            controller: dateController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),

            ),
          ),
          SizedBox(height: 16),
          Text(':رقم القيد', style: TextStyle(fontSize: 16)),
          TextField(
            controller: numController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),
          Text(':الكلية', style: TextStyle(fontSize: 16)),
          TextField(
            controller:coullegeController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),

          Text(':التخصص', style: TextStyle(fontSize: 16)),
          TextField(
            controller: specController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),

          Text(':المستوى', style: TextStyle(fontSize: 16)),
          TextField(
            controller: levelController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),

          Text(':الفصل', style: TextStyle(fontSize: 16)),
          TextField(
            controller:classController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),

          Text(':العام الجامعي', style: TextStyle(fontSize: 16)),
          TextField(
            controller: year2Controller,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),

          Text(':الحالة', style: TextStyle(fontSize: 16)),
          TextField(
            controller: statusController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),

          Text(':نوع المقعد الدراسي', style: TextStyle(fontSize: 16)),
          TextField(
            controller: kindController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'نفقة خاصة/منحة'
            ),
          ),
          SizedBox(height: 16),

          Text(':اسباب الانسحاب', style: TextStyle(fontSize: 16)),
          TextField(
            controller: reasonController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
            maxLines: 4,
          ),
          SizedBox(height: 16),

          Text(':تاريخ طلب الانسحاب', style: TextStyle(fontSize: 16)),
          TextField(
            controller:date2Controller,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),),

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
