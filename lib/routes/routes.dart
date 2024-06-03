import 'package:flutter/material.dart';

import '../Screen/FullScreen.dart';
import '../Screen/dialogPage.dart';
import '../qutos/home/hompage.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    '/dia': (context)=> DialogPage(),
    '/full': (context)=> FullScreen(),
    '/': (context)=> HomePage(),

  };
}