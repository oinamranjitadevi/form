
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const Form()
    );
  }
}
class Form extends StatefulWidget {

  
  const Form({ Key? key }) : super(key: key);

  @override
  State<Form> createState() => _FormState();
}
String name = '';
String address = '';
String gender = '';
String email = '';
String password = '';
String phone = '';
String qualification = '';
String dob = '';
String age = '';

class _FormState extends State<Form> {
 
 
 TextEditingController _nametextcontroller =TextEditingController();
 TextEditingController _addresstextcontroller =TextEditingController();
 TextEditingController _gendertextcontroller =TextEditingController();
 TextEditingController _emailtextcontroller =TextEditingController();
 TextEditingController _passwordtextcontroller =TextEditingController();
 TextEditingController _phonetextcontroller =TextEditingController();
 TextEditingController _qualificationtextcontroller =TextEditingController();
 TextEditingController _dobtextcontroller =TextEditingController();
 TextEditingController _agetextcontroller =TextEditingController();


  final GlobalKey<FormState>_formkey = GlobalKey<FormState>();

  
  
  
  
  
  
  
  
  
  Widget _name(){
    return TextFormField(
    
      
      decoration: const InputDecoration(
        
        icon: Icon(Icons.person),
        labelText: "Name"
      ),
      keyboardType: TextInputType.name,
      onFieldSubmitted: (value) {
        setState(() {
          name = value;
        });
      },
      validator: (value){
        if(value == null || value.isEmpty){
          return 'Required Name';
        } return null;
      },
    );
  }

  Widget _address(){
    return TextFormField(
      decoration: const InputDecoration(
        icon: Icon(Icons.streetview_outlined),
        labelText: "Address"
      ),
      keyboardType: TextInputType.streetAddress,
      onFieldSubmitted: (value) {
        setState(() {
          address = value;
        });
      },
      validator: (value){
        if(value == null || value.isEmpty){
          return 'Required Name';
        } return null;
      },
    );
  }
  
  Widget _gender(){
    return TextFormField(
      decoration: const InputDecoration(
        icon: Icon(Icons.person),
        labelText: "Gender"
      ),
      keyboardType: TextInputType.name,
      onFieldSubmitted: (value) {
        setState(() {
          gender = value;
        });
      },
      validator: (value){
        if(value == null || value.isEmpty){
          return 'Required Name';
        } return null;
      },
    );
  }
  
  Widget _email(){
    return TextFormField(
      decoration: const InputDecoration(
        icon: Icon(Icons.mail),
        labelText: "Email"
      ),
keyboardType: TextInputType.name,
      onFieldSubmitted: (value) {
        setState(() {
          email = value;
        });
      },
      validator: (value){
        if(value == null || value.isEmpty){
          return 'Required Name';
        } return null;
      },
    );
  }
 
  Widget _password(){
    return TextFormField(
      decoration: const InputDecoration(
        icon: Icon(Icons.key),
        labelText: "Password"
      ),
    );
  }
  Widget _phonenumber(){
    return TextFormField(
      decoration: const InputDecoration(
        icon: Icon(Icons.phone),
        labelText: "Phone Number"
      ),
    );
  }
  Widget _qualification(){
    return TextFormField(
      decoration: const InputDecoration(
        icon: Icon(Icons.cast_for_education),
        labelText: "Qualification"
      ),
    );
  }
  Widget _dateofbirth(){
    return TextFormField(
      decoration: const InputDecoration(
        icon: Icon(Icons.cast_for_education),
        labelText: "Date of Birth"
      ),
    );
  }
  Widget _age(){
    return TextFormField(
      decoration:const InputDecoration(
        icon: Icon(Icons.calendar_month),
        labelText: " Age"
      ),
    );
  }


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text("Form"), 
      ),
     body:Column(
       children: [
         Center(
           child:  Text(
            "Application form" , style: TextStyle(
              fontSize: 20
            ),
            
           ),
           
         ),
         _name(),
         _address(),
         _gender(),
         _email(),
         _password(),
         _phonenumber(),
         _qualification(),
         _dateofbirth(),
         _age(),
         const SizedBox(
            height: 100,
          ),
        ElevatedButton(onPressed: () {
          name = _nametextcontroller.text;
          address = _addresstextcontroller.text;
          gender = _gendertextcontroller.text;
          email = _emailtextcontroller.text;
          password = _passwordtextcontroller.text;
          phone = _phonetextcontroller.text;
          qualification = _qualificationtextcontroller.text;
          dob = _dobtextcontroller.text;
          age  = _agetextcontroller.text;
          Navigator.push(context, MaterialPageRoute(builder: (context) => Page1(name1: name, address1: address, gender1: gender, email1: email, password1: password, phone1: phone, qualification1: qualification, dob1: dob, age1: age)));

        



        },child:const Text("Submit"),
        ),
              ],
            ),
             
             
            );
  }
}