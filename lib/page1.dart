import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
final String name1 ;
final String address1 ;
final String gender1 ;
final String email1 ;
final String password1 ;
final String phone1 ;
final String qualification1 ;
final String dob1 ;
final String age1 ;


  const Page1({ Key? key, required this.name1, required this.address1, required this.gender1,required  this.email1,required this.password1,required this.phone1,required this.qualification1,required this.dob1,required this.age1 }) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("FORM PREVIEW"),),
    body: Column(
      children: [
         Text(" Name :  "+ widget.name1),
         Text(" Adress :  "+ widget.address1),
         Text(" Gender :  "+ widget.gender1),
         Text(" Email :  "+ widget.email1),
         Text(" Password :  "+ widget.password1),
         Text(" Phone Number :  "+ widget.phone1),
         Text(" Qualification :  "+ widget.qualification1),
         Text(" Date of Birth :  "+ widget.dob1),
         Text(" Age :  "+ widget.age1),
      ],
    ),
      
    );
  }
}