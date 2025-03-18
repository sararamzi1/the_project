import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart'as http;
class ratrans9 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff012861),
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        },
          icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black,),),
        title: Text('استمارة تظلم', textAlign: TextAlign.right,
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
  final TextEditingController numberController = TextEditingController();
  final TextEditingController coullegeController = TextEditingController();
  final TextEditingController specController = TextEditingController();
  final TextEditingController levelController = TextEditingController();
  final TextEditingController name2Controller = TextEditingController();
  final TextEditingController gradeController = TextEditingController();
  final TextEditingController ratingController = TextEditingController();
  final TextEditingController teacherController = TextEditingController();
  final TextEditingController reasonController = TextEditingController();
  final TextEditingController notesController = TextEditingController();
  final TextEditingController number2Controller = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  Future<void> sendData() async {
    final response = await http.post(
      Uri.parse('http://عنوان_الجهاز:رقم_المنفذ/api/projects'), // استبدل بالعنوان الصحيح
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        'name': nameController.text,
        'number': numberController.text,
        'coullege': coullegeController.text,
        'number2':number2Controller.text,
        'spec':specController,
        'level':levelController,
        'name2':name2Controller,
        'grade':gradeController,
        'rating':ratingController,
        'teacher':teacherController,
        'reason':reasonController,
        'notes':notesController,
        'date':dateController,
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
          Text(':الاسم', style: TextStyle(fontSize: 16)),
          TextField(
            controller: nameController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'أدخل الاسم',
            ),
          ),

          SizedBox(height: 16),
          Text(':الرقم الجامعي', style: TextStyle(fontSize: 16)),
          TextField(
            controller:numberController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),),

          SizedBox(height: 16),
          Text(':كلية', style: TextStyle(fontSize: 16)),
          TextField(
            controller: coullegeController,
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
          Text(':اسم المقرر', style: TextStyle(fontSize: 16)),
          TextField(
            controller:name2Controller,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),),
          Text(':الدرجة', style: TextStyle(fontSize: 16)),
          TextField(
            controller:gradeController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),),
          Text(':التقدير', style: TextStyle(fontSize: 16)),
          TextField(
            controller:ratingController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),),
          Text(':استاذ المقرر', style: TextStyle(fontSize: 16)),
          TextField(
            controller:teacherController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),),
          Text(':ملاحظات', style: TextStyle(fontSize: 16)),
          TextField(
            controller:notesController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),),
        Text(':عدد المقررات المتظلم فيها', style: TextStyle(fontSize: 16)),
    TextField(
    controller:number2Controller,
    textAlign: TextAlign.right,
    decoration: InputDecoration(
    border: OutlineInputBorder(),
    ),),
          Text(':تاريخ تقديم التظلم', style: TextStyle(fontSize: 16)),
          TextField(
            controller:dateController,
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
