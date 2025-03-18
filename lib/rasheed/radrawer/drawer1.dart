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

                    Text('برامج وتخصصات كلية الطب والعلوم الصحية',
                        style: TextStyle(color: Colors.black,
                            fontSize: 15, fontWeight: FontWeight.bold)),

                    SizedBox(height: 10,),
                    createCard(context, 'الطب والجراحة',
                        'assets/Screenshot_20250119_231120.jpg',
                        Color(0xfffbaa5d)),
                    createCard(context, 'دكتور صيدلة',
                        'assets/Screenshot_20250119_231120.jpg',
                        Color(0xfffbaa5d)),
                    createCard(context, 'الصيدلة العامة ',
                        'assets/Screenshot_20250119_230722.jpg',
                        Color(0xfffbaa5d)),
                    createCard(context, 'الطب المخبري ',
                        'assets/Screenshot_20250119_230722.jpg',
                        Color(0xfffbaa5d)),
                    createCard(context, 'كلية طب الاسنان ',
                        'assets/Screenshot_20250119_230722.jpg',
                        Color(0xfffbaa5d)),
                    //------------------------------------
                    SizedBox(height: 20,),
                    Divider(color: Colors.transparent,),
                    Text('برامج وتخصصات كلية الهندسة والتكنلوجيا',
                        style: TextStyle(color: Colors.black,
                            fontSize: 20, fontWeight: FontWeight.bold)),

                    SizedBox(height: 10,),
                    createCard(context, 'الميكاترونكس',
                        'assets/Screenshot_20250119_231120.jpg',
                        Color(0xfffbaa5d)),
                    createCard(context, 'تقنية المعلومات',
                        'assets/Screenshot_20250119_231120.jpg',
                        Color(0xfffbaa5d)),
                    createCard(context, 'الجرافكس والمالتيميديا',
                        'assets/Screenshot_20250119_230722.jpg',
                        Color(0xfffbaa5d)),
                    createCard(context, 'امن سيبراني ',
                        'assets/Screenshot_20250119_231120.jpg',
                        Color(0xfffbaa5d)),
                    createCard(context, 'التصميم الداخلي',
                        'assets/Screenshot_20250119_231120.jpg',
                        Color(0xfffbaa5d)),
                    //---------------------------------
                    SizedBox(height: 25,),
                    Divider(color: Colors.transparent,),
                    Text('برامج وتخصصات كلية المال والاعمال',
                        style: TextStyle(color: Colors.black,
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(height: 15,),
                    createCard(context, 'ادارة اعمال دولية',
                        'assets/Screenshot_20250119_231120.jpg',
                        Color(0xfffbaa5d)),
                    createCard(context, ' محاسبة عربي/انجليزي',
                        'assets/Screenshot_20250119_231120.jpg',
                        Color(0xfffbaa5d)),
                    createCard(context, 'ادارة اعمال بالعربي',
                        'assets/Screenshot_20250119_230722.jpg',
                        Color(0xfffbaa5d)),
                    createCard(context, ' تسويق بالعربي',
                        'assets/Screenshot_20250119_231120.jpg',
                        Color(0xfffbaa5d)),
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
        height: 90,
        width: 10,
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