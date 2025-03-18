import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart'as http;
class trans1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6d2932),
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        },
          icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black,),),
        title: Text('استمارة اختيار مشروع التخرج', textAlign: TextAlign.right,
          style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold,),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ProjectForm(),
      ),
    );
  }}
    class ProjectForm extends StatefulWidget {
    @override
    _ProjectFormState createState() => _ProjectFormState();
    }

    class _ProjectFormState extends State<ProjectForm> {
    final TextEditingController projectNameController = TextEditingController();
    final TextEditingController projectDescriptionController = TextEditingController();
    final TextEditingController numberOfPeopleController = TextEditingController();
    final TextEditingController peopleNamesController = TextEditingController();

    Future<void> sendData() async {
    final response = await http.post(
    Uri.parse('http://عنوان_الجهاز:رقم_المنفذ/api/projects'), // استبدل بالعنوان الصحيح
    headers: <String, String>{
    'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, dynamic>{
    'projectName': projectNameController.text,
      'description': projectDescriptionController.text,
      'numberOfPeople': int.parse(numberOfPeopleController.text),
      'peopleNames': peopleNamesController.text,
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
                Text(':اسم المشروع', style: TextStyle(fontSize: 16)),
                TextField(
                  controller: projectNameController,
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'أدخل اسم المشروع',
                  ),
                ),
                SizedBox(height: 16),

                Text(': وصف المشروع', style: TextStyle(fontSize: 16)),
                TextField(
                  controller: projectDescriptionController,
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'أدخل وصف المشروع',
                  ),
                  maxLines: 3,
                ),
                SizedBox(height: 16),

                Text(':عدد الأشخاص', style: TextStyle(fontSize: 16)),
                TextField(
                  controller: numberOfPeopleController,
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'أدخل عدد الأشخاص',
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 16),

                Text(':أسماء الأشخاص', style: TextStyle(fontSize: 16)),
                TextField(
                  controller: peopleNamesController,
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'أدخل أسماء الأشخاص (مفصولة بفواصل)',
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
                    }, child: Text('اضغط للبدئ',  textAlign:TextAlign.right,
                    style: TextStyle(color: Colors.white,
                      fontSize: 18,fontWeight: FontWeight.normal,),
                  ),
                  )
                ),
              ],
             ),
          );
     }
    }
