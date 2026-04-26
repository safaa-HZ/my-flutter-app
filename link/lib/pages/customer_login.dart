import'package:flutter/material.dart';
class CustomerLogin extends StatelessWidget {
   const CustomerLogin ({super.key});
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Color(0xFFF4ECDD),
      body : Padding(padding: const EdgeInsets.only(top:60),
      child:SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("image/home.png",width: 50,height: 50,),
              SizedBox(width: 20,),
              Text("AT Your \nDoor",
              style:TextStyle(
                fontWeight: FontWeight.w700,
                fontFamily: 'Inter',
                fontSize: 24,
              )),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome Back", 
              style:TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                fontSize: 36,
              )),
              Text("Login to continue using the service "),
            ],
          ),
          Image.asset("image/homme.png", width:338 , height:225 ,),
          SizedBox(height: 10,),
          Align(
            alignment: Alignment(-0.2,0),
           child:MaterialButton(
            child: Text("Customer",
            style:TextStyle(
              fontFamily: 'Inteer',
              fontWeight: FontWeight.w800,
              fontSize: 20,
            )),
            textColor: Colors.white,
            color: Color(0xFF2B2B2B),
            height: 37,
            minWidth: 154,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            onPressed: (){},
          ),
          ),
          SizedBox(height: 10,),
          SizedBox(
            width:320 ,
            height: 56,
          child :TextField(
           decoration: InputDecoration(
            hintText: "ENTER YOUR EMAIL",
            hintStyle: TextStyle(color:Color(0xFF968A8A)),
            labelStyle: TextStyle(color:Color(0xFFFBF7F2),),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            prefixIcon: Icon(Icons.email_outlined),
          ), 
          ),
          ),
          SizedBox(height: 10,),
          SizedBox(
            width:320 ,
            height: 56,
          child :TextField(
            obscureText: true,
            style: TextStyle(
              color:Color(0xFF968A8A),
            ),
           decoration: InputDecoration(
            hintText: "ENTER YOUR PASSWORD",
            labelStyle: TextStyle(color:Color(0xFFFBF7F2),),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            prefixIcon: Icon(Icons.lock_outline),
          ), 
          ),
          ),
          SizedBox(height: 10,),
          MaterialButton(
            child:Text("connect"),
            textColor: Colors.white,
            color:Color(0xFF4A4A4A),
            height: 56,
            minWidth: 320,
            shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(40)),
            onPressed: (){},
          ),
        ],
      ),
      ),
      ),
    );
  }
}