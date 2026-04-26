import 'package:flutter/material.dart';
class Find extends StatelessWidget{
  const Find ({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4ECDD),
      body: Center(
      child: Column(
        children:[
          Positioned(
            top:80,
            bottom: 50,
          child:Text("Find a Service:",
          style:TextStyle(
            fontFamily: 'Inter',
            fontWeight:FontWeight.w700 ,
            fontSize:40 ,
          ),
          ),
          ),
          SizedBox(height: 100,),
          MaterialButton(
            minWidth: 361,
            height: 141,
            color:Color(0xFFF4ECDD),
            child: Center( // يضمن أن النص يكون في وسط الزر
            child: Text(
            "Consultation",
            style: TextStyle(
            fontSize: 20,
            ),),),
            onPressed: (){},
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
            side: BorderSide(color: Colors.black, width: 1.0),
            ),  
          ),

          SizedBox(height: 50,),

          MaterialButton(
            minWidth: 361,
            height: 141,
            color:Color(0xFFF4ECDD),
            child: Center( // يضمن أن النص يكون في وسط الزر
            child: Text(
            "Major work",
            style: TextStyle(
            fontSize: 20,
            ),),),
            onPressed: (){},
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
            side: BorderSide(color: Colors.black, width: 1.0),
            ),  
          ),
          SizedBox(height: 80,),
          MaterialButton(
            color:Color(0xFF4A4A4A),
            textColor: Colors.white,
            child:Text("Appointment",style:TextStyle(fontSize:24,fontWeight: FontWeight.w700)),
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),),
            minWidth: 361,
            onPressed: (){},
          )
        ],
      ),
      ),
    );
  }
}
