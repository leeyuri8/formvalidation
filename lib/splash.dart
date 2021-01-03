import 'dart:async';

import 'package:flutter/material.dart';
import 'package:yara/profile.dart';
import 'package:yara/signup_company.dart';

class Splash extends StatefulWidget{
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  TextEditingController controller = TextEditingController();

@override
  Widget build(BuildContext context) {
   return Scaffold(
    
     backgroundColor: Colors.white ,
     body: Column(
       children: <Widget> [
         Container(

          child: Text(
            'Buy your favourites', style: TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontFamily: 'Proxima Nova',
              fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
          ),
          
          ),
     
      Container(
        alignment: Alignment.topCenter,
         child: Text('personalization of your \nshopping brands',
               style: TextStyle(
                  fontFamily: 'Proxima Nova',
                  fontSize: 13,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
        
        ),

        
        ),
Container(
  alignment: Alignment.center,
  child: Row(
    children: [
    new Image.asset('assets/images/home/jpg',
          width: 600.0,
          height: 240.0,
          fit: BoxFit.cover,
          alignment: Alignment.center,

   ) ],)
),

Container(
  child: RaisedButton(
    elevation: 10 ,
     shape: RoundedRectangleBorder(
         borderRadius: new BorderRadius.circular(18.0),
          side: BorderSide(color: Colors.black),
          
      ),
      color: Colors.black,
        onPressed: () { 
            Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Profile()),
  );
         },
        child: Text('START SHOPPING', style: TextStyle(
             fontFamily:'Proxima Nova',
             fontWeight: FontWeight.bold,
             color: Color(0xffffffff),
             ),
             ),
  
    
    )
),

Row(
  children: <Widget>[

    new GestureDetector(
     onTap: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    	builder: (context) => CompanySignup()),
  );
     },
  child: new  Text(
                'Sign up',
                style: TextStyle(
                  fontFamily: 'Proxima Nova',
                  fontSize: 13,
                  color: const Color(0xff000000),
                  decoration: TextDecoration.underline,
                ),
                textAlign: TextAlign.center,
              ),
     
),

 
 
    Text(
      'or',
                style: TextStyle(
                  fontFamily: 'Proxima Nova',
                  fontSize: 13,
                  color: const Color(0x96000000),
                ),
                textAlign: TextAlign.center,
              ),
     new GestureDetector(
     onTap: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    	builder: (context) => CompanySignup()),
  );
     },
  child: new  Text(
             'Log in',
                style: TextStyle(
                  fontFamily: 'Proxima Nova',
                  fontSize: 13,
                  color: const Color(0xff000000),
                  decoration: TextDecoration.underline,
                ),
                textAlign: TextAlign.center,
  ),

      
              ),
     
],
)

     
    
       

  ],
     ),
   );
  }
}