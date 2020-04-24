import 'package:courses/homepage.dart';
import 'package:courses/secondpage.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(   DevicePreview(
    builder: (context)=> MyApp(),
    enabled: !kReleaseMode,
    )
   );
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // builder: (context, widget)=> ResponsiveWrapper.builder(
      //   BouncingScrollWrapper.builder(context, widget),
      //   maxWidth:1200,
      //   minWidth:450,
      //   defaultScale: true,
      //   breakpoints: [
      //     ResponsiveBreakpoint(breakpoint: 450, name: MOBILE),
      //     ResponsiveBreakpoint(
      //           breakpoint: 800, name: TABLET, autoScale: true),
      //       ResponsiveBreakpoint(
      //           breakpoint: 1000, name: TABLET, autoScale: true),
      //       ResponsiveBreakpoint(breakpoint: 1200, name: DESKTOP),
      //       ResponsiveBreakpoint(breakpoint: 2460, name: "4K", autoScale: true),
      //   ]
      // ),
     debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
        
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

