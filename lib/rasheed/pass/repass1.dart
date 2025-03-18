import 'package:flutter/material.dart';
import 'package:trying/rasheed//pass/repass2.dart';





class raForget extends StatefulWidget{
  const raForget({Key? key}) : super(key: key);
  @override
  _Forget createState()=> _Forget();
}
class _Forget extends State<raForget>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(

        children: [
          Container(
            width:  MediaQuery.of(context).size.width,
            height: 80,
            decoration: BoxDecoration(
                color: Color(0xff012861),
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40))
            ),

            child:Row(
              children: [

                Align(alignment:Alignment.topLeft,
                  child:
                  IconButton(onPressed: (){
                    Navigator.of(context).pop();
                  },
                    icon: Icon(Icons.arrow_back_ios),),),
                SizedBox(width: 90,),
                Text('نسيت كلمة السر',style: TextStyle(color: Colors.white,fontSize: 20,
                    fontWeight: FontWeight.bold),)


              ],
            ),





          ),
          SizedBox(height: 20,),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/forget.png',width: 300,),
                SizedBox(height: 40,),
                Text('يرجى ادخال رقم هاتفك',style: TextStyle(fontSize: 20),),
                SizedBox(height: 15,),
                Container(
                  width: 250,
                  child:

                  TextFormField(

                    keyboardType: TextInputType.phone,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,

                    ),


                    decoration: InputDecoration(

                      border: OutlineInputBorder(),
                      prefix: Padding(padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Text('(+967)',style: TextStyle(color: Colors.grey),),
                      ),

                      focusedBorder: OutlineInputBorder(

                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),

                      ),


                    ),


                  ),),

                SizedBox(height: 40,),
                SizedBox(
                    width: 280,
                    child: Container(
                        padding: EdgeInsets.only(top: 1,left: 1.5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border:Border(
                              bottom: BorderSide(color: Colors.black),
                              top: BorderSide(color: Colors.black),
                              left: BorderSide(color: Colors.black),
                              right: BorderSide(color: Colors.black),
                            )

                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: Color(0xfff3841b,
                          ),
                              minimumSize:Size(60,50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              )),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>raSend()));
                            // Navigator.push(context,MaterialPageRoute(builder: (context)=>HomePage()), );
                          }, child: Text('ارسال',  textAlign:TextAlign.right,
                          style: TextStyle(color: Colors.white,
                            fontSize: 21,fontWeight: FontWeight.bold,),
                        ),
                        )

                    )

                ),

              ] )



        ],


      ),


    );




  }



}