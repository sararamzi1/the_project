import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart'as http;
class ratrans7 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6d2932),
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        },
          icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black,),),
        title: Text('استمارة تحويل تخصص لطالب مستجد', textAlign: TextAlign.right,
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
  final TextEditingController specController = TextEditingController();
  final TextEditingController classController = TextEditingController();
  final TextEditingController stateController = TextEditingController();
  final TextEditingController coullegeController = TextEditingController();
  final TextEditingController systemController = TextEditingController();
  final TextEditingController yearController = TextEditingController();
  final TextEditingController levelController = TextEditingController();
  final TextEditingController gradeController = TextEditingController();
  final TextEditingController typeController = TextEditingController();
  final TextEditingController year2Controller = TextEditingController();
  final TextEditingController changeController = TextEditingController();
  final TextEditingController toController = TextEditingController();
  final TextEditingController spec2Controller = TextEditingController();
  final TextEditingController reasonController = TextEditingController();
  final TextEditingController kindController = TextEditingController();
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
        'year':yearController.text,
        'level':levelController.text,
        'state': stateController.text,
        'system': systemController.text,
        'class':classController.text,
        'spec':specController,
        'grade': gradeController,
        'year2': year2Controller.text,
        'change': changeController.text,
        'to':toController.text,
        'spec2':spec2Controller,
        'reason': reasonController.text,
        'kind': kindController.text,
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
          SizedBox(height: 10,),
          CheckBoxWithTextFieldScreen(),
          Text(':الاسم حسب الثانوية العامة ', style: TextStyle(fontSize: 16)),
          TextField(
            controller: nameController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'أدخل الاسم',
            ),
          ),

          SizedBox(height: 16),
          Text(':تاريخ التسجيل بالجامعة', style: TextStyle(fontSize: 16)),
          TextField(
            controller: yearController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),
          Text(':الكلية', style: TextStyle(fontSize: 16)),
          TextField(
            controller: levelController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),
          Text(':التخصص', style: TextStyle(fontSize: 16)),
          TextField(
            controller: levelController,
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
            controller: levelController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),

          SizedBox(height: 16),
          Text(':الفصل', style: TextStyle(fontSize: 16)),
          TextField(
            controller: levelController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),
          Text(':الحالة', style: TextStyle(fontSize: 16)),
          TextField(
            controller: levelController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),
          Text(':نوع المقعد', style: TextStyle(fontSize: 16)),
          TextField(
            controller: levelController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),
          Text(':معدل الثانوية', style: TextStyle(fontSize: 16)),
          TextField(
            controller: levelController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),
          Text(':نوعها', style: TextStyle(fontSize: 16)),
          TextField(
            controller: levelController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),
          Text(':عام الحصول عليها', style: TextStyle(fontSize: 16)),
          TextField(
            controller: levelController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),
          Text(':ارغب بالتحويل من تخصص', style: TextStyle(fontSize: 16)),
          TextField(
            controller: levelController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),
          Text(':الى تخصص', style: TextStyle(fontSize: 16)),
          TextField(
            controller: levelController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),
          Text(':كلية', style: TextStyle(fontSize: 16)),
          TextField(
            controller: levelController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),
          Text(':سبب طلب التحويل', style: TextStyle(fontSize: 16)),
          TextField(
            controller: levelController,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
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
class CheckBoxWithTextFieldScreen extends StatefulWidget {
  @override
  _CheckBoxWithTextFieldScreenState createState() => _CheckBoxWithTextFieldScreenState();
}

class _CheckBoxWithTextFieldScreenState extends State<CheckBoxWithTextFieldScreen> {
  int?selectedIndex;
  List<bool> checkBoxValues = List.generate(2, (index) => false); // 8 عناصر
  List<TextEditingController> controllers1 =
  List.generate(2, (index) => TextEditingController());
  List<String> firstTexts = [
    "في اطار الكلية",
    "في اطار الجامعة",
  ];
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: List.generate(2, (index) {
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
              Expanded(child: Text(
                firstTexts[index],
                style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                textAlign: TextAlign.end,
              ),),
            ],

          ),

        );
      }),

    );

  }
}