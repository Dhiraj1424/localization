import 'package:flutter/material.dart';

import 'package:localization/router/custom_router.dart';
import 'package:localization/router/route_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();

  
}

class _MyAppState extends State<MyApp> {
  


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Localization',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      
      onGenerateRoute: CustomRouter.generatedRoute,
      initialRoute: homeRoute,
    );
  }
}