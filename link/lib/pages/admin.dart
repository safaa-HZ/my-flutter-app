import'package:flutter/material.dart';
class Admin extends StatelessWidget
{
  const Admin({super.key});
  @override
  Widget build (BuildContext context)
  {
    return Scaffold(
      backgroundColor: Color(0xFFF4ECDD),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:[
            Column(
              children:[
            Padding(
              padding:EdgeInsetsGeometry.only(top:25),
              child: Image.asset("image/user_1.png",width:41,height: 41,),
            ),
            SizedBox(height: 10,),
            Text("Hello admin!",
            style:TextStyle(
              color: Colors.black,
              fontFamily: 'Inter',
              fontSize: 24,
              fontWeight: FontWeight.w700,
            )),
              ],
            ),
            SizedBox(height: 5,),
            Container(
              width: 360,
              height: 549,
              decoration :BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFFFBF7F2),
              ),
              child: Column(
                children:[
                  Text("Dashboard overview",
                  textAlign: TextAlign.start,
                  style:TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    color: Colors.black
                  )),
                  SizedBox(height: 10,),
                  Container(
                    height: 96,
                    width: 345,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color:Color(0xFFF4ECDD),
                    ),
                    child: Column(
                    children: [
                      Text("Total Users",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),),
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Users",
                          style:TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color:Color(0xFF969696),
                          )),
                          Text("1250",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color:Colors.black,
                          ),)
                        ],
                      ),
                    ],),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 96,
                    width: 345,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color:Color(0xFFF4ECDD),
                    ),
                    child: Column(
                    children: [
                      Text("Total fessionals",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),),
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children:[
                          Text("430",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color:Colors.black,
                          ),)
                        ],
                      ),
                    ],),
                  ),
                  SizedBox(height: 10,),
                   Container(
                    height: 96,
                    width: 345,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color:Color(0xFFF4ECDD),
                    ),
                    child: Column(
                    children: [
                      Text("Active Booking",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Active",
                          style:TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color:Color(0xFF969696),
                          )),
                          Text("230",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color:Colors.black,
                          ),)
                        ],
                      ),
                    ],),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 96,
                    width: 345,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color:Color(0xFFF4ECDD),
                    ),
                    child: Column(
                    children: [
                      Text("Pending Requests",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Besics",
                          style:TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color:Color(0xFF969696),
                          )),
                          Text("15",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color:Colors.black,
                          ),)
                        ],
                      ),
                    ],),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
             Container(
                color: Color(0xFFECECEC),
                height: 105,
                child:Center(
                child:Row( 
                children: [
                SizedBox(width: 35,),
                Image.asset("image/maison.png",width: 47,height: 47,),
                SizedBox(width: 35,),
                Image.asset("image/user_2.png",width: 47,height: 47,),
                SizedBox(width: 35,),
                Image.asset("image/pompier.png",width: 47,height: 47,),
                SizedBox(width: 35,),
                Image.asset("image/fishier.png",width: 47,height: 47,),
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