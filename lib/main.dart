import 'package:flutter/material.dart';
import 'package:phan_anh_do_thi/constant.dart';
import 'package:phan_anh_do_thi/screens/home/home_screen.dart';
import 'package:phan_anh_do_thi/screens/reflects/reflects_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Phản ánh đô thị',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        //visualDensity: VisualDensity.adaptivePlatformDensity,
        // colorScheme: ColorScheme.fromSeed(seedColor: kPrimaryColor),
        //textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
      ),
      home: HomeScreen(),
    );
  }
}