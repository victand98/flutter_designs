import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

import 'package:flutter_designs/src/pages/basic_page.dart';
import 'package:flutter_designs/src/pages/custom_page.dart';
import 'package:flutter_designs/src/pages/scroll_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //   SystemUiOverlayStyle.light.copyWith(
    //     statusBarColor: Colors.pinkAccent,
    //   ),
    // );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: "custom",
      routes: {
        "basic": (BuildContext context) => BasicPage(),
        "scroll": (BuildContext context) => ScrollPage(),
        "custom": (BuildContext context) => CustomPage(),
      },
    );
  }
}
