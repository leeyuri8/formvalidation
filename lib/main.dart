import 'package:flutter/material.dart';
import 'package:yara/profile.dart';
import 'package:yara/signup_company.dart';


void main() {
  runApp(MyApp());
  
}

class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      home: CompanySignup(),
    
    );
  
  }
}
