import'package:flutter/material.dart';
class Booking extends StatelessWidget{
  const Booking ({super.key});
  @override
  Widget build (BuildContext context)
  {
    const double imageRadius = 52.5;
    return Scaffold(
      body: SingleChildScrollView(
        child:Column(
          children:[
            Stack(
              clipBehavior: Clip.none, 
              alignment: Alignment.bottomCenter,
             children:[
            Container(
              height: 172,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                color: Color(0xFFF4ECDD),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("image/next.png",width: 29,height: 29,),
                  Text("BOOKING",
                  textAlign: TextAlign.center,
                  style:TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  )),                 
                ],
              ),
              ),
            ),
            Positioned(
                  bottom: 0, 
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 4), 
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: CircleAvatar(
                      radius: imageRadius,
                      backgroundColor: Colors.grey[200], 
                      child: ClipOval(
                        child: Image.asset(
                          "image/job_1.jpg",
                          width: imageRadius * 2,
                          height: imageRadius * 2,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Text("KARIM ELC" ,
            textAlign: TextAlign.center,
            style:TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color:Colors.black,
            )),
            SizedBox(height: 20,),
            Container(
              height: 57,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:Color(0xFFF4ECDD),
              ),
              child:Text("Karim Yahiaoui",
              style:TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color:Colors.black,
              )),
            ),
            SizedBox(height: 15,),
            Container(
              height: 57,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:Color(0xFFF4ECDD),
              ),
              child:Text("Electrecien",
              style:TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color:Colors.black,
              )),
            ),
            SizedBox(height: 15,),
            Container(
              height: 57,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:Color(0xFFF4ECDD),
              ),
              child:Text("+213780103306",
              style:TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color:Colors.black,
              )),
            ),
            SizedBox(height: 15,),
            Container(
              height: 57,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:Color(0xFFF4ECDD),
              ),
              child:Text("ALGERIE ,chraga",
              style:TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color:Colors.black,
              )),
            ),
            SizedBox(height: 15,),
            MaterialButton(
            child:Text("Discussion"),
            textColor: Colors.white,
            color:Color(0xFF4A4A4A),
            height: 56,
            minWidth: 360,
            shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20)),
            onPressed: (){},
          ),
          SizedBox(height: 15,),
            MaterialButton(
            child:Text("Find a Service"),
            textColor: Colors.white,
            color:Color(0xFF4A4A4A),
            height: 56,
            minWidth: 360,
            shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20)),
            onPressed: (){},
          ),
          ],
        ),
      ),
    );
  }
}