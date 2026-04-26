import'package:flutter/material.dart';
class verification2 extends StatelessWidget{
  const verification2 ({super.key});
  @override
  Widget build (BuildContext context)
  {
    return Scaffold(
      backgroundColor: Color(0xFFF4ECDD),
      body : SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(top: 25),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("image/home.png" , width: 50 , height: 50),
                    SizedBox(width:15),
                    Text("AT Your\n Door",
                    style:TextStyle(color: Colors.black , 
                    fontFamily: 'Inter',
                    fontWeight:FontWeight.w700,
                    fontSize:25.0,)),
                   ],
               ),
               ),
               Container(
                alignment: Alignment.center,
               child:Column(
                children: [
               Text("Verification code",
               style:TextStyle(
                color:Colors.black,
                fontSize: 32,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
               ),
              ),
          ],
        )
      ),
      SizedBox(height: 10,),
      Container(
        width: 373,
        height: 392,
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          borderRadius :BorderRadius.circular(30),
        ),
        child: Column(
          children: [
            Padding(
            padding: EdgeInsets.only(top: 15),
        child: Container(
          width:146,
          height: 154,
          decoration: BoxDecoration(
            color:Color(0xFFF4ECDD),
            borderRadius: BorderRadius.circular(70),
          ),
          child:Center(
            child:Image.asset("image/image.png",width:128,height:128),
          ),
        ),
        ),
          Text("Verified!",
          textAlign: TextAlign.center,
          style:TextStyle(
            fontFamily: 'Inter',
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 32,
          ),
         ),
         Text("Your account has been verified",
         textAlign: TextAlign.center,
         style: TextStyle(
          fontFamily: 'Inter',
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color:Color(0xFF989090),
         ),
         ),
         SizedBox(height: 5,),
         MaterialButton(onPressed: (){},
           minWidth: 275,
           height: 58,
           color:Color(0xFF2B2B2B),
           shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(30),
            ),
            textColor: Colors.white,
            child:Text("Done",
            style:TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            )),       
            ),
          ],
        ),
      ),
     ],
    ),
   ),
  );
  }
}