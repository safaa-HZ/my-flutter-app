import'package:flutter/material.dart';
class Categories extends StatelessWidget
{
  const Categories ({super.key});
  @override
  Widget build (BuildContext context)
  {
    return Scaffold(
      backgroundColor: Color(0xFFF4F4F4),
      body:SingleChildScrollView(
        child:Column(
          children:[
            Padding(
              padding: EdgeInsetsGeometry.only(top:15),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Home",
                style:TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color:Colors.black,
                )),
                Image.asset("image/parametre.png",width: 50,height: 50,),
             ],
           ),
          ),
          SizedBox(height: 10,),
          SizedBox(
            width: 370,
            height: 62,
            child:TextField(
              decoration: InputDecoration(
                hintText: "search services",
                hintStyle: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFA79F9F),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color:Color(0xFFEFEDED)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color:Color(0xFFEFEDED))
                ),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Text("Categories",
          style:TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w700,
            color:Colors.black,
          )),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 148,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:Color(0xFFF4ECDD),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                 Image.asset("image/canos.png",width: 73,height: 73,),
                 SizedBox(height: 10,),
                 Text("Plumber",
                 style:TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color:Colors.black,
                 )),
                ],
                ),
              ),
              SizedBox(width: 50,),
              Container(
                width: 148,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:Color(0xFFF4ECDD),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                 Image.asset("image/electrecien.png",width: 68,height: 68,),
                 SizedBox(height: 10,),
                 Text("Electrecien",
                 style:TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color:Colors.black,
                 )),
                ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 148,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:Color(0xFFF4ECDD),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                 Image.asset("image/cleaning.png",width: 73,height: 73,),
                 SizedBox(height: 10,),
                 Text("Cleaning",
                 style:TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color:Colors.black,
                 )),
                ],
                ),
              ),
              SizedBox(width: 50,),
              Container(
                width: 148,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:Color(0xFFF4ECDD),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                 Image.asset("image/tuter.png",width: 68,height: 68,),
                 SizedBox(height: 10,),
                 Text("Tuter",
                 style:TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color:Colors.black,
                 )),
                ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Padding(padding: EdgeInsetsGeometry.only(left: 20),
              child:Container(
                width: 148,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:Color(0xFFF4ECDD),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                 Image.asset("image/repaire.png",width: 73,height: 73,),
                 SizedBox(height: 10,),
                 Text("Repairs",
                 style:TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color:Colors.black,
                 )),
                ],
                ),
              ),
              ),
            ],
          ),
          SizedBox(height: 22,),
          Container(
              color: Color(0xFFECECEC),
              height: 85,
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