import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        actions: const [
          Text('Essential', 
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),), 
          SizedBox(width: 12,), 
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.only(left: 18.0, right: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Welcome Back!', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500),), 
            SizedBox(height: 20,), 

            // form field
            Text('Email Address', style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400),),

            TextField(
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              

              decoration: InputDecoration(
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10),
                  ), 
                  ),
                suffixIcon: Icon(Icons.message_outlined, color: Colors.black,),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)), 
                  
                ),
                
                hintStyle: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400),
              ),
            ),

            
          ],
        ),
      ),
    );
  }
}