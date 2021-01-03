import 'dart:html';
import 'dart:typed_data';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:yara/signup_company.dart';
import 'package:yara/signup_user.dart';

class Login extends StatefulWidget{
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String phone = '0599325985';
  int password = 123456;
  bool isCompany = false;
  bool isUser = false;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  void validate(){
    if(formkey.currentState.validate()){
      print('Validated');
    }else{
      print ('Not validated');
    }
  }
  String validatepass(value){
    
              if(value.isEmpty){
                return "Required";
                
              }
              else if(value!=password){
                return 'Invalid';
              }  else{
                return null;
              }     
  }
  String validatephone(value){
   if(value.isEmpty){
       return "Required";
   }else if(value!=phone){
  return 'invalid';
   
   }else{
   return null;
   
   }
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
      title:Text('Signin') ,
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal:20,vertical: 20),
       child: Form(
         // ignore: deprecated_member_use
         autovalidate: true,
         key: formkey,
         child: Column(
             children: <Widget>[
         Container(
         alignment: Alignment.topLeft,
         padding: EdgeInsets.all(10),
         child: Text(
           'Enter your data',
           style: TextStyle(
             color: Color(0xff6c738a),
             fontSize:13,
             fontFamily:'Proxima Nova',
             height:2.8,
           ),
           textAlign: TextAlign.left,
         ),

       ),
       Container(
      child: Row(
        children: <Widget> [
          ListTile(
          title:Text('Campany'),
          leading: Radio(
            value: isCompany, 
            onChanged: (bool value){
              setState(() {
                isCompany = value;
                MaterialPageRoute(builder: (context)=>CompanySignup()
                );
              }
              );
            }, groupValue: null,
          ),
            ),
             ListTile(
          title:Text('Campany'),
          leading: Radio(            value: isCompany, 
            onChanged: (bool value){
              setState(() {
                isUser = value;
                MaterialPageRoute(builder: (context)=>UserSignup()
                );
              
              }
              
              );
            }, groupValue: null,
          ),
            ),

        ],
        ),
       ),
       Container(
        
         child:(
           TextFormField(
            obscureText: false ,
            decoration: InputDecoration(
            hintText: 'Phone',
            border:OutlineInputBorder(
             borderRadius:BorderRadius.circular(18.0), 
             
             ),
             fillColor: Color(0xffF5F5F5),
            
            ),
            validator: validatephone,
             )
           ) ,
         
         ),
         Container(
        
         child:(
          TextFormField(
            obscureText: true ,
            decoration: InputDecoration(
            hintText: 'Password',
            border:OutlineInputBorder(
             borderRadius:BorderRadius.circular(18.0), 
             
             ),
             fillColor: Color(0xffF5F5F5),
            
            ),
            validator: validatepass,
             )
           ) ,
         
         ),
         Container(
           padding: EdgeInsets.only(left: 40.0) ,
         child: Text(
                'Forgot password?',
                style: TextStyle(
                  fontFamily: 'Proxima Nova',
                  fontSize: 13,
                  color: Color(0x8f000000),
                  decoration: TextDecoration.underline,
                  
                ),
                textAlign: TextAlign.center,
              ),
         ),
         Container(
           child: RaisedButton(
               shape: RoundedRectangleBorder(
         borderRadius: new BorderRadius.circular(18.0),
          side: BorderSide(color: Colors.black),
          
      ),
        color: Colors.black,
        elevation: 10,
             onPressed: validate,
             child: Text('LOG IN', style: TextStyle(
             fontFamily:'Proxima Nova',
             fontWeight: FontWeight.bold,
             color: Color(0xffffffff),
             ),
             ),
            
           ),

      ),
      Container(
     child: Text(
                'Don\'t have account?',
                style: TextStyle(
                  fontFamily: 'Proxima Nova',
                  fontSize: 13,
                  color: const Color(0x61000000),
                ),
                textAlign: TextAlign.center,
              ),
      ),
Container(
  child: Text(
                'Sign Up',
                style: TextStyle(
                  fontFamily: 'Proxima Nova',
                  fontSize: 13,
                  color: const Color(0xff000000),
                  decoration: TextDecoration.underline,
                ),
                textAlign: TextAlign.center,
                
              ),
              
            
),

     ]
        ),
       
     
          
        ),
     
   
      )

     );
     
  
    
  }
}
