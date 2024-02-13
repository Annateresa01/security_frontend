import 'package:flutter/material.dart';
import 'package:securityapp/pages/homepage.dart';

void main()
{
  runApp(securityapp());
}
class securityapp extends StatelessWidget {
  const securityapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homepage(),
    );
  }
}
