import 'package:flutter/material.dart';
import'package:my_first_app/pages/verification_1.dart';
import 'package:my_first_app/pages/customer_1.dart';
import 'package:my_first_app/pages/customer.dart';
import 'package:my_first_app/pages/customer_pages.dart';
import 'package:my_first_app/pages/debut.dart';
import 'package:my_first_app/pages/find.dart';
import 'package:my_first_app/pages/customer_login.dart';
import 'package:my_first_app/pages/verification_2.dart';
import 'package:my_first_app/pages/payment.dart';
import 'package:my_first_app/pages/payment_1.dart';
import 'package:my_first_app/pages/payment_2.dart';
import 'package:my_first_app/pages/notifications.dart';
import'package:my_first_app/pages/notifications_1.dart';
import'package:my_first_app/pages/notifications_2.dart';
import'package:my_first_app/pages/profile.dart';
import'package:my_first_app/pages/profile_1.dart';
import'package:my_first_app/pages/admin.dart';
import'package:my_first_app/pages/categories.dart';
import'package:my_first_app/pages/booking.dart';
import 'package:my_first_app/pages/rating.dart';
void main()
{
  runApp( MyApp());
}
class MyApp extends StatelessWidget
{
  const MyApp({super.key});
  @override
  Widget build (BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner:false, 
      home: rating(),
    );
  }  
}