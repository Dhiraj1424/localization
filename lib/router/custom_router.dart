import 'package:flutter/material.dart';

import 'package:localization/classes/pages/about_page.dart';
import 'package:localization/classes/pages/not_found.dart';
import 'package:localization/classes/pages/settings.dart';
import 'package:localization/router/route_constants.dart';

import '../classes/pages/home_page.dart';

class CustomRouter {
  static Route<dynamic> generatedRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case aboutRoute:
        return MaterialPageRoute(builder: (_) => const AboutPage());
      case settingsRoute:
        return MaterialPageRoute(builder: (_) => const SettingsPage());
      default:
        return MaterialPageRoute(builder: (_) => const NotFoundPage());
    }
  }
}