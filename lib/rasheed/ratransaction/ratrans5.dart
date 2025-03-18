import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart'as http;
class ratrans5 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff012861),
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        },
          icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black,),),
        title: Text('استمارة طلب وقف قيد', textAlign: TextAlign.right,
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
  final TextEditingController systemController = TextEditingController();
  final TextEditingController levelController = TextEditingController();
  final TextEditingController classController = TextEditingController();
  final TextEditingController stateController = TextEditingController();
  final TextEditingController coullegeController = TextEditingController();
  final TextEditingController specController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController timeController = TextEditingController();
  final TextEditingController fromController = TextEditingController();
  final TextEditingController toController = TextEditingController();
  final TextEditingController year2Controller = TextEditingController();
  final TextEditingController reasonController = TextEditingController();

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
        'num':numberController.text,
        'system':systemController,
        'level':levelController,
        'class':classController,
        'coullege':coullegeController,
        'specialize':specController,
        'from':fromController,
        'to':toController,
        'year2':year2Controller,
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
          Text(':االجنسية', style: TextStyle(fontSize: 16)),
          TextField(
            controller:genderController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'أدخل جنسيتك',
            ),
          ),
          SizedBox(height: 16),
          Text(':رقم القيد', style: TextStyle(fontSize: 16)),
          TextField(
            controller: numberController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),
          Text(':النظام', style: TextStyle(fontSize: 16)),
          TextField(
            controller: systemController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),

            ),
          ),
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

          Text(':الفصل', style: TextStyle(fontSize: 16)),
          TextField(
            controller: classController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),

          Text(':الحالة', style: TextStyle(fontSize: 16)),
          TextField(
            controller:stateController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),),
          SizedBox(height: 16),
          Text(':تاريخ الالتحاق', style: TextStyle(fontSize: 16)),
          TextField(
            controller: dateController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),

            ),
          ),
          SizedBox(height: 16),
          Text(':مدة القيد', style: TextStyle(fontSize: 16)),
          TextField(
            controller:timeController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),
          Text(':للعام', style: TextStyle(fontSize: 16)),
          TextField(
            controller: year2Controller,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),
          Text(':من الفصل الدراسي', style: TextStyle(fontSize: 16)),
          TextField(
            controller: fromController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),
          Text(':الى الفصل الدراسي', style: TextStyle(fontSize: 16)),
          TextField(
            controller: toController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),
          Text(':من العام', style: TextStyle(fontSize: 16)),
          TextField(
            controller:yearController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),
          Text(':سبب وقف القيد', style: TextStyle(fontSize: 16)),
          TextField(
            controller: reasonController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
            maxLines: 3,
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
