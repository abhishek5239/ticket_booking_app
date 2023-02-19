import 'package:flutter/material.dart';
import 'package:ticket_booking_app/screens/bottombar.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'master_branch_commit',
      theme: ThemeData(
        primaryColor: primary,
      ),
      home: bottombar(),
    );
  }
}
