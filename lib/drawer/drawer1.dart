import 'package:flutter/material.dart';
import 'package:trying/Page2.dart';
class Drawer1 extends StatefulWidget{
  @override

  _Drawer1State createState()=> _Drawer1State();
  }
  
  class _Drawer1State extends State<Drawer1> {

    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(onPressed: () {
            Navigator.pop(context);
          },
            icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black,),),
        ),
        body: Column(
          children: [
            // GridView
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 14,
                crossAxisSpacing: 14,
                children: <Widget>[
                  SizedBox(height: 8,),
                  Text('برامج وتخصصات كلية العلوم الطبية',
                        style: TextStyle(color: Colors.black,
                            fontSize: 15, fontWeight: FontWeight.bold)),

                  SizedBox(height: 10,),
                  createCard(context, 'صيدلة',
                      'assets/Screenshot_20250119_231120.jpg',
                      Color(0xfffff1c2)),
                  createCard(context, 'طب مخبري',
                      'assets/Screenshot_20250119_231120.jpg',
                      Color(0xfffff1c2)),
                  createCard(context, 'تغذية علاجية ',
                      'assets/Screenshot_20250119_230722.jpg',
                      Color(0xfffff1c2)),
                  //------------------------------------
                  SizedBox(height: 8,),
                  Text('برامج وتخصصات كلية العلوم الطبية',
                        style: TextStyle(color: Colors.black,
                            fontSize: 20, fontWeight: FontWeight.bold)),

                  SizedBox(height: 10,),
                  createCard(context, 'هندسة اتصالات والكترونيات',
                      'assets/Screenshot_20250119_231120.jpg',
                      Color(0xfffff1c2)),
                  createCard(context, 'هندسة معمارية',
                      'assets/Screenshot_20250119_231120.jpg',
                      Color(0xfffff1c2)),
                  createCard(context, 'تصميم داخلي وديكور',
                      'assets/Screenshot_20250119_230722.jpg',
                      Color(0xfffff1c2)),
                  createCard(context, 'امن سيبراني وشبكات',
                      'assets/Screenshot_20250119_231120.jpg',
                      Color(0xfffff1c2)),
                  createCard(context, 'تقنية معلومات',
                      'assets/Screenshot_20250119_231120.jpg',
                      Color(0xfffff1c2)),
                  createCard(context, 'نظم معلومات حاسوبية',
                      'assets/Screenshot_20250119_230722.jpg',
                      Color(0xfffff1c2)),
                  createCard(context, 'جرافيك ومالتيميديا',
                      'assets/Screenshot_20250119_230722.jpg',
                      Color(0xfffff1c2)),
                  //---------------------------------
                  SizedBox(height: 20,),
                Divider(color: Colors.transparent,),
                  SizedBox(height: 8,),
                  Text('برامج وتخصصات كلية العلوم الطبية',
                        style: TextStyle(color: Colors.black,
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10,),
                  createCard(context, 'ادارة اعمال دولية',
                      'assets/Screenshot_20250119_231120.jpg',
                      Color(0xfffff1c2)),
                  createCard(context, 'محاسبة',
                      'assets/Screenshot_20250119_231120.jpg',
                      Color(0xfffff1c2)),
                  createCard(context, 'ادارة اعمال',
                      'assets/Screenshot_20250119_230722.jpg',
                      Color(0xfffff1c2)),
                  createCard(context, 'علوم مالية ومصرفية',
                      'assets/Screenshot_20250119_231120.jpg',
                      Color(0xfffff1c2)),
                  createCard(context, 'تسويق',
                      'assets/Screenshot_20250119_231120.jpg',
                      Color(0xfffff1c2)),
                  createCard(context, 'نظم معلومات ادارية',
                      'assets/Screenshot_20250119_230722.jpg',
                      Color(0xfffff1c2)),
                  createCard(context, 'اداب انجليزي',
                      'assets/Screenshot_20250119_231120.jpg',
                      Color(0xfffff1c2)),
                  createCard(context, 'اذاعة وتلفزيون',
                      'assets/Screenshot_20250119_231120.jpg',
                      Color(0xfffff1c2)),
                  createCard(context, 'علاقات عامة',
                      'assets/Screenshot_20250119_230722.jpg',
                      Color(0xfffff1c2)),
                ],
              ),
            ),



     ] ));
    }

    Widget createCard(BuildContext context, String subtitle, String imagePath,
        Color color) {
      return GestureDetector(onTap: () {

        },
        child: Container(
          height: 120,
          width: 20,
          decoration: BoxDecoration(

            color: color,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3))
            ],
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Image.asset(
                    imagePath, fit: BoxFit.cover, height: 30, width: 30),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Text(subtitle,
                    style: TextStyle(fontSize: 13, color: Colors.white)),
              ),
            ],
          ),
        ),
      );
    }

  }