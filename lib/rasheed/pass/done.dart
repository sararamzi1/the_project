import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class done extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(

        children: [
          SizedBox(height: 190,),
          Image.asset('assets/rb_2150641398.png'),
          SizedBox(height: 40,),
          Text('  تم تغيير كلمة السر بنجاح'
              ,style:GoogleFonts.notoSansArabic(
                  textStyle: TextStyle(fontSize: 27,color: Colors.black)
              )
          )
        ],


      ),



    );


  }


}