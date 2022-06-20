import 'package:flutter/material.dart';

import 'package:localization/router/custom_router.dart';
import 'package:localization/router/route_constants.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
     localizationsDelegates: AppLocalizations.localizationsDelegates,
  supportedLocales: AppLocalizations.supportedLocales,
  locale: Locale('hi',''),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      
      onGenerateRoute: CustomRouter.generatedRoute,
      initialRoute: homeRoute,
    );
  }
}