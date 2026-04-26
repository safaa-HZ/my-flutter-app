import'package:flutter/material.dart';
class Profile extends StatelessWidget{
  const Profile ({super.key});
  @override
  Widget build (BuildContext context)
  {
    return Scaffold(
      backgroundColor: Color(0xFFF4ECDD),
      body : SingleChildScrollView(
        child: Column(
          children:[
            Padding(
              padding : EdgeInsetsGeometry.only(top:25),
              child: Column(
                children: [
                  Center(
                    child :Image.asset("image/persone.png",width:135,height: 107,),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Text("Karim ya",
                      textAlign: TextAlign.center,
                      style:TextStyle(
                        color:Colors.black,
                        fontFamily: 'Inter',
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                      )),
                      Image.asset("image/camera.png",width: 33,height: 33,),
                    ],
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    height: 63,
                    child: TextField(
                      decoration:InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color:Color(0xFFF7F7F7)),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color:Color(0xFFF7F7F7)),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: "Change email",
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 24,
                          color:Color(0xFFADADAD),
                          fontFamily: 'Inter',
                        ),
                        prefixIcon: Icon(Icons.mail),
                        fillColor: Color(0xFFF7F7F7),
                        filled:true,
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    height: 63,
                    child: TextField(
                      decoration:InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color:Color(0xFFF7F7F7)),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color:Color(0xFFF7F7F7)),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: "Change phone number",
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 24,
                          color:Color(0xFFADADAD),
                          fontFamily: 'Inter',
                        ),
                        prefixIcon: Icon(Icons.phone),
                        fillColor: Color(0xFFF7F7F7),
                        filled:true,
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    height: 63,
                    child: TextField(
                      decoration:InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color:Color(0xFFF7F7F7)),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color:Color(0xFFF7F7F7)),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: "Change job",
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 24,
                          color:Color(0xFFADADAD),
                          fontFamily: 'Inter',
                        ),
                         prefixIcon:Padding(padding: EdgeInsets.all(8.0),
                        child:Image.asset("image/job.png", width: 24,
                        height: 24,),),
                        fillColor: Color(0xFFF7F7F7),
                        filled:true,
                      ),
                    ),
                  ),
                  SizedBox(height: 260,),
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
          ],
        ),
      ),
    );
  }
}