import 'package:Essentials/constant/widgets/form_buttons.dart';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {

  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return 
     SingleChildScrollView(
      child: Padding( 
        padding: const EdgeInsets.only(left: 18.0, right: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,), 
 Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
   children: [
   const Text('Reset your Password', 
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                IconButton(onPressed: (){
      Navigator.pop(context); 
    }, icon: Icon(Iconsax.close_circle, size: 20, color: Colors.black,)), 
   ],
 ), 
 

 
             
            const SizedBox(height: 10,),
            const Text('Enter your registered email address to reset your password', 
            style: TextStyle(fontSize: 16),), 
            const SizedBox(height: 20,), 
            Text('Email Address',), 
            SizedBox(height: 10,), 
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                prefixIcon: const Icon(Iconsax.message, 
                color: Colors.black),
               // hintText: 'Email', 
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10), 
                )
              ),
            ), 
            const SizedBox(height: 20,),
            // Center(
            //   child: ElevatedButton(onPressed: (){}, 
            //   child: Text('Submit', 
            //   style: TextStyle(fontSize: 18),), 
            //   ),
            // ),
            Center(
              child: FormButton(
                text: 'Send me Link', 
                onTap: (){
                  if(formKey.currentState!.validate()){
                    formKey.currentState!.save();}
                },),
            ), 
          ],
        ),
      ),
    
    );
  }
}