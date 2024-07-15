import 'package:flutter/material.dart';
import 'package:route_task_flutter/Core/Config/ApplicationTheme.dart';
import 'package:route_task_flutter/Presentaion/Widgets/HomeScreen.dart';
void main(){
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  HomeScreen(),
      theme: Apptheme.lightTheme,

    );
  }
}
