import'package:flutter/material.dart';
class Payment_1 extends StatefulWidget{
  const Payment_1 ({super.key});
  @override
  State<Payment_1> createState() => _PaymentState();
}
class _PaymentState extends State<Payment_1> {
  final TextEditingController _cardController = TextEditingController();
bool _isCardInvalid = false;
  int? _selectedValue = 0;
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Color(0xFFF4ECDD),
      body:SingleChildScrollView(
        child:Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 25),
            child:Text("payment",
            textAlign: TextAlign.center,
            style:TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
              fontSize: 32,
              color: Colors.black,
            ),
           ),
          ),
          SizedBox(height: 50,),
          Center(
          child:Container(
            width: 370,
            height: 65,
            decoration: BoxDecoration(
              color: Color(0xFFFBF7F2),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total payment",
                style:TextStyle(
                  color:Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                )),
                Text("2000 DZD",
                style:TextStyle(
                  color:Colors.black,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                )),
              ],
            ),
          ),
          ),
          SizedBox(height: 30,),
          
          Container(
            width:360,
            height: 310,
            color: Color(0xFFFBF7F2),
            child: 
            Padding(
              padding: EdgeInsetsGeometry.only(top:15),
            child:Column(
              children: [
                Image.asset("image/cri_2.png",width:324,height: 216,),
                Row(
                  children: [
                    Expanded(
                    child:RadioListTile( 
                      activeColor: Colors.black,
                      title:Text("Pay pal",
                      style:TextStyle(
                        color:Colors.black, fontWeight: FontWeight.w700, fontSize: 24,
                      )),
                      value: 1,
                      groupValue: _selectedValue, 
                     onChanged: (val) {
                    setState(() {
                    _selectedValue = val as int?; 
                    });
                    },
                    fillColor: WidgetStateProperty.resolveWith<Color>((states) {
                    if (states.contains(WidgetState.selected)) {
                    return Colors.black; 
                    }
                    return Colors.white; 
                    }),
                    ),
                    ),
                    SizedBox(width: 40,),
                    MaterialButton(
                      color:Color(0xFF22224D),
                      minWidth: 50,
                      height: 36,
                      onPressed: (){},
                      textColor: Color(0xFFFFFFFF),
                      child:Text("pay pal",
                      style:TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                      )),
                    ),
                  ],
                ),
              ],
            ),
            ),
          ),
          SizedBox(height: 20,),
          SizedBox(
            width: 350,
            height: 55,
          child:TextField(
            controller: _cardController,
            decoration:InputDecoration(
              hintText: "Enter your carte number",
              hintStyle: TextStyle(
                color:Color(0xFFBDBDBD),
                fontFamily: 'Inter',
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
              fillColor: _isCardInvalid ? Color(0xFFFBAEB0): const Color(0xFFFBF7F2),
              filled:true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: _isCardInvalid ? Color(0XFF7F1214) :Color(0xFFFBF7F2),
                  width: 2,
                )
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: _isCardInvalid ? Color(0xFF7F1214) :Color(0xFFFBF7F2),
                  width: 2,
                )
              ),
            ),
          ),
          ),
          SizedBox(height: 10,),
          SizedBox(
            width: 350,
            height: 55,
          child:TextField(
            decoration:InputDecoration(
              hintText: "Carte Scanner",
              hintStyle: TextStyle(
                color:Color(0xFFBDBDBD),
                fontFamily: 'Inter',
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
              fillColor: Color(0xFFFBF7F2),
              filled:true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color:Color(0xFFBDBDBD),),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color:Color(0xFFBDBDBD),),
              ),
              suffixIcon:Padding(padding: EdgeInsets.all(8.0),
               child:Image.asset("image/camera.png", width: 25,
               height: 25,),
              ),
            ),
          ),
          ),
          SizedBox(height: 10,),
          MaterialButton(
          color:Color(0xFF4A4A4A),
          onPressed: (){
            setState(() {
             _isCardInvalid = _cardController.text.length < 16;
           });
          },
          textColor: Color(0xFFFFFFFFF),
          minWidth: 350,
          height: 56,
          child:Text("Complete payment",
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 20,
            fontWeight: FontWeight.w700,
          )),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          )
          ],
        ),
      ),
    );
  }
}