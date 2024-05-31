import 'package:flutter/material.dart';

import '../Screen/FullScreen.dart';
import '../Screen/dialogPage.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    '/di': (context)=> DialogPage(),
    '/': (context)=> FullScreen(),
  };
}