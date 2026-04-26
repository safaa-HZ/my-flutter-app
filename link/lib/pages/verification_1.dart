import'package:flutter/material.dart';
class Verification1 extends StatelessWidget{
  const Verification1 ({super.key});
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Color(0xFFF4ecdd),
      body:SingleChildScrollView(
        child:Column(
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
               Align(
                alignment: Alignment.center,
               child:Column(
                children: [
               SizedBox(
                width: 324,
                height: 46,
               child:Text("Verification code",
               textAlign: TextAlign.center,
               style:TextStyle(
                color:Colors.black,
                fontSize: 32,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
               )),),
               SizedBox(height: 15,),
               SizedBox(
                width: 296,
                height: 100,
                child:Text("we have sent you a code \n  to verify your email",
                textAlign: TextAlign.center,
                style:TextStyle(
                  color:Color(0xFF594949),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),),
               ),
                ],
               ),
               ),
               SizedBox(height: 25,),
               Center(
               child:Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                  width:67 ,
                  height: 67,
                  child:TextField(
                    decoration:InputDecoration(
                      fillColor: Color(0xFFCBDCFC),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color:Color(0xFF1540CE)),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color:Color(0xFF1540CE)),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  ),
                  SizedBox(width: 15,),
                  SizedBox(
                  width:67 ,
                  height: 67,
                  child:TextField(
                    decoration:InputDecoration(
                      fillColor: Color(0xFFCBDCFC),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color:Color(0xFF1540CE)),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color:Color(0xFF1540CE)),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  ),
                  SizedBox(width: 15,),
                  SizedBox(
                  width:67 ,
                  height: 67,
                  child:TextField(
                    decoration:InputDecoration(
                      fillColor: Color(0xFFCBDCFC),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color:Color(0xFF1540CE)),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color:Color(0xFF1540CE)),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  ),
                  SizedBox(width: 15,),
                  SizedBox(
                  width:67 ,
                  height: 67,
                  child:TextField(
                    decoration:InputDecoration(
                      fillColor: Color(0xFFCBDCFC),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color:Color(0xFF1540CE)),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color:Color(0xFF1540CE)),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  ),
                ],
                ),
        ),
               SizedBox(height: 10,),
               Row(
                children:[
               TextButton(onPressed: (){}, 
               child:Text("didn't receive anything ?",
               style:TextStyle(
                color:Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w700,
                fontFamily: 'Inter',
               ))),
                TextButton(onPressed: (){}, 
                child:Text("send again",
                style:TextStyle(
                  color:Color(0xFF2B2B2B),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Inter',
                )))
                ],
               ),
               SizedBox(height: 35,),
               MaterialButton(onPressed: (){},
               minWidth: 322,
               height: 67,
               color:Color(0xFF2B2B2B),
               shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
               ),
               textColor: Colors.white,
               child:Text("Verify",
               style:TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
               )),       
               )
             ],
        ),
      ),
    );
  }
}