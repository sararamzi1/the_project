import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
// import 'Page1.dart';
import 'package:trying/rasheed/pagera2.dart';
import 'package:trying/rasheed/pagera3.dart';
import 'package:trying/rasheed/pagera4.dart';
import 'package:trying/rasheed/radrawer/drawer1.dart';
import 'package:trying/rasheed/radrawer/drawer2.dart';
import 'package:trying/rasheed/radrawer/drawer3.dart';
import 'package:trying/rasheed/radrawer/drawer4.dart';
import 'package:trying/second_page.dart';
class RaStart extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<RaStart> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        body: IndexedStack(
          index: currentIndex,
          children: [
            Pagera2(),
            HomePage(),
            Pagera3(),
          ],
        ),
        bottomNavigationBar: CurvedNavigationBar(
          height: 60,
          buttonBackgroundColor: Color(0xff012861),
          backgroundColor: Colors.transparent,
          color: Color(0xff012861),
          index: currentIndex,
          items: <Widget>[
            Icon(Icons.person, size: 30, color: Colors.white),
            Icon(Icons.home, size: 30, color: Colors.white),
            Icon(Icons.settings, size: 30, color: Colors.white),
          ],
          onTap: (int tappedIndex) {
            setState(() {
              currentIndex = tappedIndex; // تحديث الفهرس الحالي
            });
          },
        ),
        endDrawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                padding: EdgeInsets.only(left: 200, top: 100),
                child: Text(
                  'اسم الطالب',
                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(color: Color(0xff012861)),
              ),
              _createDrawerItem(context, 'برامج وتخصصات الجامعة', Drawer1()),
              _createDrawerItem(context, 'الوثائق المطلوبة', drawer2()),
              _createDrawerItem(context, 'عن الجامعة', drawer3()),
              _createDrawerItem(context, 'معايير التنسيق', drawer4()),
              _createDrawerItem(context, 'تواصل معنا', Pagera4()),
            ],
          ),
        ),
      ),
    );
  }

  // دالة لإنشاء عناصر القائمة في الدرج
  ListTile _createDrawerItem(BuildContext context, String title, Widget page) {
    return ListTile(
      title: Align(
        alignment: Alignment.centerRight,
        child: Text(title, style: TextStyle()),
      ),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // الهيدر
        Container(
          height: 55,
          decoration: BoxDecoration(color: Color(0xff012861)),
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications, color: Colors.white),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Text(
                    'الصفحة الرئيسية',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.menu, color: Colors.white),
                onPressed: () {
                  // فتح القائمة الجانبية
                  Scaffold.of(context).openEndDrawer();
                },
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.only(left: 150),
          child: Text(
            'شريط الأخبار',
            style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 5),
        // CarouselSlider
        CarouselSlider(
          options: CarouselOptions(
            height: 150,
            aspectRatio: 16 / 8,
            viewportFraction: 0.6,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            enlargeCenterPage: true,
            enlargeFactor: 0.5,
            reverse: true,),
          items: [
   'assets/rashed.jpg',
   'assets/rashed2.jpg',
    'assets/rashed3.jpg',].map((item){
      return Container(
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          image: DecorationImage(image: AssetImage(item),
          fit: BoxFit.cover),
        ),
      );
          })   .toList(),

            // أضف المزيد من العناصر هن
        ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.only(left: 150),
          child: Text(
            'الفهرس',
            style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 5),
        // GridView
        Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: <Widget>[
              createCard(context, 'معاملات التسجيل' , Color(0xfffbaa5d), Pagera2()),
              createCard(context, 'معاملات ادارية',  Color(0xfffbaa5d), Pagera3()),
              createCard(context, 'معاملات خاصى',  Color(0xfffbaa5d), Pagera4()),

            ],
          ),
        ),
      ],
    );
  }

  Widget createCard(BuildContext context, String subtitle,  Color color, Widget page) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.2), spreadRadius: 2, blurRadius: 5, offset: Offset(0, 3))],
        ),

        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Text(subtitle, style: TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}