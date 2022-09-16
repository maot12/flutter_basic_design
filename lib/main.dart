import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_basic_design/screens/screens.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      title: 'Material App',
      initialRoute: 'home_screen',
      routes: {
        'basic_design' : (_) => const BasicDesignScreen(),
        'scroll_design': (_) => const ScrollDesign(),
        'home_screen'  : (_) => const HomeScreen()
      },
    );
  }
}

