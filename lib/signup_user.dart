import 'package:flutter/material.dart';
import 'package:yara/genders.dart';
import 'package:yara/signup_company.dart';

class UserSignup extends StatefulWidget{
  @override
  _UserSignupState createState() => _UserSignupState();
}

class _UserSignupState extends State<UserSignup> {
    bool isCompany = false;
     bool isUser = false;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _confirmPass = TextEditingController();
  String validateMobile(String value) {
  String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
  RegExp regExp = new RegExp(pattern);
if (value.length == 0) {
      return 'Please enter mobile number';
}
else if (!regExp.hasMatch(value)) {
      return 'Please enter valid mobile number';
}
return null;
}           
  void validate(){
    if(formkey.currentState.validate()){
      print('Validated');
    }else{
      print ('Not validated');
    }
  }

  
  @override
  Widget build(BuildContext context) {
 return Scaffold(
         appBar:AppBar(
      title:Text('Sign Up',textAlign: TextAlign.center,
      style: TextStyle(fontFamily: 'Proxima Nova',fontSize: 14,
      fontWeight: FontWeight.w700,

      )
      ) ,
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
             height:3,
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
          title:Text('User'),
          leading: Radio(          
              value: isUser, 
            onChanged: (bool value){
              setState(() {
                isUser = value;         
              }

              );
            }, groupValue: null,
          ),
            ),

        ],
        ),
       ),

       Container(
        child: TextFormField(
          textAlign:TextAlign.left ,
           obscureText: false ,
            decoration: InputDecoration(
            hintText: 'User Name',
            hintStyle: TextStyle(
              color:  Color(0x6e6c738a),
               fontFamily: 'Proxima Nova',
                fontSize: 12,
                height: 3,
              ),
            
            border:OutlineInputBorder(
             borderRadius:BorderRadius.circular(18.0), 
             
             ),
             fillColor: Color(0xffF5F5F5),
            
            ),
            validator: (value){
              if(value.isEmpty)
                return 'Enter a valid name';
              return null;
              
            },
          ),
       ),
    DropdownButton<Genders>(
      hint: Text(
        'Gender', 
         style: TextStyle(
                fontFamily: 'Proxima Nova',
                fontSize: 12,
                color: const Color(0xff6c738a),
      ),
      textAlign: TextAlign.left,
      ),
      items: gender.map((Genders gender) {
        return  DropdownMenuItem<Genders>(
         value: gender,
         child: Row(children: <Widget>[
          SizedBox(width: 10),
          Text(gender.name)
         ],
         ),

        );
      },
      ).toList(),

     onChanged:(Genders newValue){
   setState(() {
     gender = newValue as List<Genders>;
   });
     }
     ),
         Container(
        child: TextFormField(
          textAlign:TextAlign.left ,
           obscureText: false ,
            decoration: InputDecoration(
            hintText: '@Account name',
            hintStyle: TextStyle(
              color:  Color(0x6e6c738a),
               fontFamily: 'Proxima Nova',
                fontSize: 12,
                height: 3,
              ),
            
            border:OutlineInputBorder(
             borderRadius:BorderRadius.circular(18.0), 
             
             ),
             fillColor: Color(0xffF5F5F5),
            
            ),
            validator: (value){
              if(value.isEmpty || !value.startsWith('@'))
                 return 'Enter invalid user name';
              return null;
            },
          ),
       ), 
            Container(
        child: TextFormField(
          textAlign:TextAlign.left ,
           obscureText: false ,
            decoration: InputDecoration(
            hintText: 'Instagram account',
            hintStyle: TextStyle(
              color:  Color(0x6e6c738a),
               fontFamily: 'Proxima Nova',
                fontSize: 12,
                height: 3,
              ),
            
            border:OutlineInputBorder(
             borderRadius:BorderRadius.circular(18.0), 
             
             ),
             fillColor: Color(0xffF5F5F5),
            
            ),
            validator: (value){
              if(value.isEmpty)
                return 'invalid instagram account';
              return null;
            },
          ),
       ),

          Container(
        child: TextFormField(
          textAlign:TextAlign.left ,
           obscureText: false ,
            decoration: InputDecoration(
            hintText: 'Mobile',
            hintStyle: TextStyle(
              color:  Color(0x6e6c738a),
               fontFamily: 'Proxima Nova',
                fontSize: 12,
                height: 3,
              ),
            
            border:OutlineInputBorder(
             borderRadius:BorderRadius.circular(18.0), 
             
             ),
             fillColor: Color(0xffF5F5F5),
            
            ),
            validator: validateMobile,
        ),
       ),
            Container(
        child: TextFormField(
          textAlign:TextAlign.left ,
           obscureText: false ,
            decoration: InputDecoration(
            hintText: 'Email',
            hintStyle: TextStyle(
              color:  Color(0x6e6c738a),
               fontFamily: 'Proxima Nova',
                fontSize: 12,
                height: 3,
              ),
            
            border:OutlineInputBorder(
             borderRadius:BorderRadius.circular(18.0), 
             
             ),
             fillColor: Color(0xffF5F5F5),
            
            ),
           onFieldSubmitted: (value){

           }, validator: (value){
             if(value.isEmpty || !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+") 
                          .hasMatch(value)) { 
                    return 'Enter a valid email!'; 
           }
           return null;
           },
          ),
       ),
       DropdownButton<Countries>(
          items: country.map((Countries country) {
      return  DropdownMenuItem<Countries>(
        value: country,
        child: Row(
          children: <Widget>[
            SizedBox(width: 15,),
            Text(country.name,),
          ],
          ),
      );
          }
          ).toList()
,
 onChanged: (Countries newValue){
   setState(() {
     newValue = country as Countries;
   });
 }),
   Container(
        child: TextFormField(
          textAlign:TextAlign.left ,
           obscureText: false ,
            decoration: InputDecoration(
            hintText: 'City',
            hintStyle: TextStyle(
              color:  Color(0x6e6c738a),
               fontFamily: 'Proxima Nova',
                fontSize: 12,
                height: 3,
              ),
            
            border:OutlineInputBorder(
             borderRadius:BorderRadius.circular(18.0), 
             
             ),
             fillColor: Color(0xffF5F5F5),
            
            ),
            validator: (value){
            if(value.isEmpty)
              return 'Entre the city!';
            return null;
            },
          ),
       ),
         Container(
        child: TextFormField(
          textAlign:TextAlign.left ,
           obscureText: true ,
             controller: _pass,
            decoration: InputDecoration(
            hintText: 'Password',
            hintStyle: TextStyle(
              color:  Color(0x6e6c738a),
               fontFamily: 'Proxima Nova',
                fontSize: 12,
                height: 3,
              ),
            
            border:OutlineInputBorder(
             borderRadius:BorderRadius.circular(18.0), 
             
             ),
             fillColor: Color(0xffF5F5F5),
            
            ),
             onFieldSubmitted: (value) {}, 
            validator: (value){
              if(value.isEmpty){
                return ' Enter a valid password!';
              }
              return null;
            },
          ),
       ),
  Container(
        child: TextFormField(
          textAlign:TextAlign.left ,
          controller: _confirmPass,
           obscureText: false ,
            decoration: InputDecoration(
            hintText: 'Confirm Password',
            hintStyle: TextStyle(
              color:  Color(0x6e6c738a),
               fontFamily: 'Proxima Nova',
                fontSize: 12,
                height: 3,
              ),
            
            border:OutlineInputBorder(
             borderRadius:BorderRadius.circular(18.0), 
             
             ),
             fillColor: Color(0xffF5F5F5),
            
            ),
                 validator: (val){
                              if(val.isEmpty)
                                   return 'Empty';
                              if(val != _pass.text)
                                   return 'Not Match';
                              return null;
                              }         
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
             child: Text('SIGN UP', style: TextStyle(
             fontFamily:'Proxima Nova',
             fontWeight: FontWeight.bold,
             color: Color(0xffffffff),
             ),
             ),
            
           ),

      ),
      Container(
     child: Text(
                'Already have account?',
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
                'Log in',
                style: TextStyle(
                  fontFamily: 'Proxima Nova',
                  fontSize: 13,
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                ),
                textAlign: TextAlign.center,

               
                
              ),
),
              Container(
               child: Text(
                'SKIP',
                style: TextStyle(
                  fontFamily: 'Proxima Nova',
                  fontSize: 13,
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                ),
                textAlign: TextAlign.center,
              ),          
),

       
       ],
      
       ),
    
     )
     )

   );

    
  }
}