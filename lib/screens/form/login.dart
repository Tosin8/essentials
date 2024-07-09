import 'package:essentials/constant/widgets/form_buttons.dart';
import 'package:essentials/constant/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

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
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50,), 
              const Text('Welcome Back!', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500),), 
              const SizedBox(height: 20,), 
        
              // form field
              
              // Email Address. 
              const SizedBox(height: 50,), 
              
              const Text('Email Address', style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400),),
        const SizedBox(height: 10,), 
              const TextField(
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                //controller: TextEditingController(),
                
        
                decoration: InputDecoration(
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10),
                    ), 
                    ),
                  prefixIcon: Icon(Iconsax.message, color: Colors.black,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)), 
                    
                  ),
                  
                  hintStyle: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400),
                ),
              ),
        const SizedBox(height: 30,), 
               // Password
              
              const Text('Password', 
              style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400),),
        const SizedBox(height: 10,),
              const TextField(
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
                //controller: TextEditingController(),
                
        
                decoration: InputDecoration(
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10),
                    ), 
                    ),
                  prefixIcon: Icon(Iconsax.lock, color: Colors.black,),
                  suffixIcon: Icon(Iconsax.eye_slash, color: Colors.black,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)), 
                    
                  ),
                  
                  hintStyle: TextStyle(fontSize: 16, 
                  color: Colors.black, fontWeight: FontWeight.w400),
                ),
              ),
        
              // forgot pwd
              const SizedBox(height: 20,), 
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    print('Forgot Password');
                  },
                  child: const Text('Forgot Password'))),
        const SizedBox(height: 50,), 
                  // Btn. 
                  FormButton(
                    onTap: () {
                      
                    },
                    text: 'Login',
                  ),  

                  const SizedBox(height: 20,),
                 
                      const Center(child: Text('-  or login with   - ', 
                      style: TextStyle(color: Colors.grey, fontSize: 15),)), 

                  const SizedBox(height: 20,),

                  // social icons. 
                  Row(
                    children: [
                      SocialBtn()
                    ],
                  )
                    
                  
            ],
          ),
        ),
      ),
    );
  }
}

