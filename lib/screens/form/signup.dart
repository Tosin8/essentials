import 'package:essentials/constant/images.dart';
import 'package:essentials/constant/widgets/form_buttons.dart';
import 'package:essentials/constant/widgets/social_btn.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  final formKey = GlobalKey<FormState>();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final addressController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        leading:  IconButton(
          onPressed: () {
            Navigator.pop(context);
          }, 
         icon: const Icon(  Iconsax.close_circle, size: 30, color: Colors.black,),),
         actions: const [
          Text('Essential', 
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),), 
          SizedBox(width: 18,), 
        ],
         
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20,), 
                const Text('Let\'s Create \nYour Account', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500),), 
                
                    
                // form field
                
                // Email Address. 
                const SizedBox(height: 15,), 
                
                const Text('Email Address', style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400),),
                    const SizedBox(height: 10,), 
                TextField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
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
                    const SizedBox(height: 10,), 
                    const Row(
                      children: [
                        Expanded(
                          child: Text('First Name')),
                          Expanded(child:  Text('Last Name'))
                      ],
                    ), 
                    const SizedBox(height: 10,), 

                    // first name and last name
                    Row(
                      children: [
                        Expanded(
                          child: 
                        // first name
                       TextFormField(
                         controller: firstNameController,
                         keyboardType: TextInputType.name,
                         textInputAction: TextInputAction.next,
                         decoration: const InputDecoration(
                           errorBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.all(Radius.circular(10),
                             ), 
                             ),
                           prefixIcon: Icon(Iconsax.user, color: Colors.black,),
                           border: OutlineInputBorder(
                             borderRadius: BorderRadius.all(Radius.circular(10)), 
                             
                           ),
                           
                           hintStyle: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400),
                         ),
                         validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your first name';
                          }
                          return null;
                        }, 
                       )
                        ),
                        const SizedBox(width: 10,),
                        Expanded(
                          child: 
                        // last name
                       TextFormField(
                         controller: lastNameController,
                         keyboardType: TextInputType.name,
                         textInputAction: TextInputAction.next,
                         decoration: const InputDecoration(
                           errorBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.all(Radius.circular(10),
                             ), 
                             ),
                           prefixIcon: Icon(Iconsax.user, color: Colors.black,),
                           border: OutlineInputBorder(
                             borderRadius: BorderRadius.all(Radius.circular(10)), 
                             
                           ),
                           
                           hintStyle: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your last name';
                          }
                          return null;
                        },
                        ), 
                        
                     ) ],
                    ), 
                 // Password
                SizedBox(height: 15,), 
                const Text('Password', 
                style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400),),
                    const SizedBox(height: 10,),
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
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
                    
                 //repeat Password
                SizedBox(height: 15,), 
                const Text('Repeat Password', 
                style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400),),
                    const SizedBox(height: 10,),
                TextField(
                  controller:confirmPasswordController,
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
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
                    
                
                
                    const SizedBox(height: 50,), 
                    // Btn. 
                    FormButton(
                      onTap: () {
                        
                      },
                      text: 'Create Account',
                    ),  
            
                    const SizedBox(height: 20,),
                   
                        const Center(child: Text('-  or signup with   - ', 
                        style: TextStyle(color: Colors.grey, fontSize: 15),)), 
            
                    const SizedBox(height: 20,),
            
                    // social icons. 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center, 
                      
                      children: [
                        SocialBtn(
                          onTap: () {}, 
                          socialicons: fb_icon, 
                        ), 
                        const SizedBox(width: 20,), 
                        SocialBtn(
                          onTap: () {}, 
                          socialicons: google_icon, 
                        ), 
                      ],
                    )
                      
                    
              ],
            ),
          ),
        ),
      ),
    );
  }
}