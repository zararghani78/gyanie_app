import 'package:flutter/material.dart';
import 'package:gyanie_app/routes/routes_link.dart';
import 'package:gyanie_app/routes/routes_name.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gynae Guide',
     
    
      initialRoute: RouteLinks.splashscreen,

      onGenerateRoute:Routes.generateroutes,
    );
  }
}
