import'package:flutter/material.dart';
class Notifications extends StatelessWidget{
  const Notifications ({super.key});
  @override
  Widget build (BuildContext context)
  {
    return Scaffold(
      backgroundColor: Color(0xFFF4ECDD),
      body:SingleChildScrollView(
        child: Column(
          children :[
            Padding(
              padding:EdgeInsetsGeometry.only(top:25),
              child: Row(
                children:[
                  Image.asset("image/next.png",width: 29,height: 29,),
                  SizedBox(width: 60,),
                  Text("Notifications",
                  style:TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 32,
                    color:Colors.black,
                    fontFamily: 'Inter',
                  )),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFFFBF7F2),
              ),
              height: 76,
              child: Row(
                children:[
                  Image.asset("image/persone.png",width: 65,height: 52,),
                  SizedBox(width: 8,),
                  Column(
                    children: [
                      Text("Sarah sid",
                      style:TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      )),
                      Text("sent your RDV",
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
             Container(
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFFFBF7F2),
              ),
              height: 76,
              child: Row(
                children:[
                  Image.asset("image/user_settings.png",width: 65,height: 52,),
                  SizedBox(width: 8,),
                  Text("admin sent you a warning",
                    style:TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  )),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFFFBF7F2),
              ),
              height: 76,
              child: Row(
                children:[
                  Image.asset("image/persone.png",width: 65,height: 52,),
                  SizedBox(width: 8,),
                  Column(
                    children: [
                      Text("Mohammed omar",
                      style:TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      )),
                      Text("added a review on your profile",
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFFFBF7F2),
              ),
              height: 95,
              child: Row(
                children:[
                  Image.asset("image/persone.png",width: 65,height: 52,),
                  SizedBox(width: 8,),
                  Column(
                    children: [
                      Text("Ahmed sid",
                      style:TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      )),
                      Text("sent you a message, check it \nnow",
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 165,),
            Container(
              color: Color(0xFFECECEC),
              height: 105,
            child:Center(
            child:Row( 
              children: [
                SizedBox(width: 35,),
                Image.asset("image/home.png",width: 48,height: 48,),
                SizedBox(width: 35,),
                Image.asset("image/search.png",width: 48,height: 48,),
                SizedBox(width: 35,),
                Image.asset("image/add.png",width: 48,height: 48,),
                SizedBox(width: 35,),
                Image.asset("image/user.png",width: 48,height: 48,),
              ],
            ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}