import'package:flutter/material.dart';
class Notifications_2 extends StatelessWidget{
  const Notifications_2 ({super.key});
  @override
  Widget build (BuildContext context)
  {
    return Scaffold(
      backgroundColor: Color(0xFFF4ECDD),
      body: SingleChildScrollView(
        child : Column(
          children:[
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
            SizedBox(height: 60,),
            Image.asset("image/garcon.png",height: 287,),
            SizedBox(height: 40,),
            Text("No Notifications Yet",
            textAlign: TextAlign.center,
            style:TextStyle(
              color:Colors.black,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w800,
              fontSize: 40,
            )),
            SizedBox(height: 160,),
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