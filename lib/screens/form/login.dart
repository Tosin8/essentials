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
        actions: [
          Text('Essential', 
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),), 
          SizedBox(width: 12,), 
        ],
      ),
    );
  }
}