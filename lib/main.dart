import 'package:flutter/material.dart';
import 'package:get_it_example/service_locator.dart';
import 'package:get_it_example/view.dart';

void main(){
  AppLocator.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: View(),
    );
  }
}
