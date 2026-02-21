import'package:flutter/material.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
  @override
  Widget build (BuildContext)
  {
    return MaterialApp(
      home:Scaffold(
        backgroundColor: Color(0xFFF4ECDD),
        
        body: Padding(
          padding: const EdgeInsets.only(top:60),
          child : Column(
            children : [
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Image.asset("image/home.png",width: 50,height: 50,),
             SizedBox(width: 20),
            Text("AT YOUR\nDOOR",
            style:TextStyle( 
            color:Colors.black,
            fontFamily: 'Inter',
            fontWeight:FontWeight.bold,
            fontSize:25.0,
            ),
            ),
          ],
        ),
        Transform.translate(
          offset:const Offset(0,-5),
        child :Image.asset("image/homme.png", height: 481,width:741,),
        ),
        Text("Find local\nexperts quickly",
        style:TextStyle(
          color:Colors.black,
          fontFamily:'Inter',
          fontWeight: FontWeight.bold,
          fontSize: 48,
        ),
        ),
        SizedBox(height:15),
        Text("Simplify your daily life through trusted\nprofessionals near you",
        style:TextStyle(
          fontFamily: 'Inter',
          color:Colors.black,
          fontSize: 20,
        )),
        SizedBox(height:20),
        ElevatedButton(onPressed:(){
           print('تم الضغط على الزر');
        },
        style:ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF2B2B2B),
          foregroundColor:Colors.white,
        ),
        child :Text("GET STATRED",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20,))
        )
        ],
      ),
        ),
      ),
    );
  }  
}
