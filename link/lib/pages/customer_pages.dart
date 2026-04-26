import 'package:flutter/material.dart';
class CustomerPage extends StatelessWidget {
    const CustomerPage({super.key});
    @override
    Widget build(BuildContext context) {
      GestureDetector(
                  onTap:() =>
                  FocusScope.of(context).unfocus(),
                );
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
               Text("Welcome Back",
               style:TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                fontSize: 36,
               )),
               Text("Login to continue using the service",
               style:TextStyle(
                fontFamily:'Inter',
                fontWeight: FontWeight.w300,
                fontSize: 20,
               ),
               ),
                Align(
                alignment: Alignment.centerLeft,
                child :Padding(
                padding: EdgeInsets.only(left: 20 , bottom: 30),
                child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF2B2B2B),
                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20)),
                ),
                onPressed: (){
                    print("تم الضغط");
                },
                child: Text("customer",
                style:TextStyle( 
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                  color:Colors.white,
                )),
               ),
              ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'ENTER YOUR NAME',
                    fillColor: Color(0xFFFBF7F2),
                    filled:true,
                    hintStyle: TextStyle(color:Color(0xFF968A8A)),
                     border: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(15),
                     ),
                    prefixIcon:Padding(padding: EdgeInsets.all(8.0),
                    child:Image.asset("image/persone.png", width: 24,
                      height: 24,),)),
                  ),
                  SizedBox(height: 15),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'ENTER YOUR FAMILY NAME',
                    fillColor: Color(0xFFFBF7F2),
                    filled:true,
                    hintStyle: TextStyle(color:Color(0xFF968A8A)),
                    border:OutlineInputBorder(
                       borderRadius:BorderRadius.circular(15),
                    ),
                    prefixIcon:Padding(padding: EdgeInsets.all(8.0),
                    child:Image.asset("image/persone.png", width: 24,
                      height: 24,),),
                  ), 
                ),
                SizedBox(height: 15),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'ENTER YOUR EMAIL',
                    fillColor: Color(0xFFFBF7F2),
                    filled:true,
                    hintStyle: TextStyle(color:Color(0xFF968A8A)),
                    border:OutlineInputBorder(
                       borderRadius:BorderRadius.circular(15),
                    ),
                    prefixIcon:Icon(Icons.email),
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'ENTER YOUR PASSWORD',
                    fillColor: Color(0xFFFBF7F2),
                    filled:true,
                    hintStyle: TextStyle(color:Color(0xFF968A8A)),
                    border:OutlineInputBorder(
                       borderRadius:BorderRadius.circular(15),
                    ),
                    prefixIcon:Icon(Icons.lock),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 15),
                TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: 'ENTER YOUR PHONE NUMBER',
                    fillColor: Color(0xFFFBF7F2),
                    filled:true,
                    hintStyle: TextStyle(color:Color(0xFF968A8A)),
                    border:OutlineInputBorder(
                       borderRadius:BorderRadius.circular(15),
                    ),
                    prefixIcon:Icon(Icons.phone),
                  ),
                ),
              ],
            ),
          ),
        );
    }
}