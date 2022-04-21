import 'package:flutter/material.dart';
import './login_screen.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({ Key? key }) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
 
 final _formkey = GlobalKey<FormState>();
 
  final firstNameEditingController =  TextEditingController();
  final lastNameEditingController =  TextEditingController();
  final userNameEditingController = TextEditingController();
  final emailEditingController =  TextEditingController();
  final phoneNumberEditingController =  TextEditingController();
  final passwordEditingController =  TextEditingController();
  final confirmPasswordEditingController =  TextEditingController();


  @override
  Widget build(BuildContext context) {
    final firstNameField = TextFormField(
      autofocus: false,
      controller: firstNameEditingController,
      keyboardType: TextInputType.name,
      onSaved: (value) {
        firstNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.account_circle),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: 'First Name',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        ),
       );

      final lastNameField = TextFormField(
      autofocus: false,
      controller: lastNameEditingController,
      keyboardType: TextInputType.name,
      onSaved: (value) {
        lastNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.account_circle),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: 'Last Name',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        ),
       );

       
      final userNameField = TextFormField(
      autofocus: false,
      controller: lastNameEditingController,
      keyboardType: TextInputType.name,
      onSaved: (value) {
        lastNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.account_circle_outlined),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: 'User Name',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        ),
       );

       final emailField = TextFormField(
      autofocus: false,
      controller: emailEditingController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) {
        emailEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.mail),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: 'Email',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        ),
       );

       final phoneNumberField = TextFormField(
      autofocus: false,
      controller: phoneNumberEditingController,
      keyboardType: TextInputType.phone,
      onSaved: (value) {
        firstNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.phone),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: 'Phone Number',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        ),
       );

       final passwordField = TextFormField(
      autofocus: false,
      controller: passwordEditingController,
      obscureText: true,
    
      onSaved: (value) {
        passwordEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.vpn_key),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: 'Password',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        ),
       );

       final confirmPassword = TextFormField(
      autofocus: false,
      controller: confirmPasswordEditingController,
      obscureText: true,
      
      onSaved: (value) {
        confirmPasswordEditingController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.vpn_key),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: 'Confirm Password',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        ),
       );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration Screen'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.white, 
      body: Center(
        child: SingleChildScrollView(
        
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Form(
              key: _formkey,
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              const SizedBox(height: 5.0,
                
                ),
              const SizedBox(height: 5.0),
               firstNameField,
              const SizedBox(height: 20),
               lastNameField,
              const SizedBox(height: 20),
                userNameField,
              const SizedBox(height: 20),
               emailField,
              const SizedBox(height: 20),
               phoneNumberField,
              const SizedBox(height: 20),
               passwordField,
              const SizedBox(height: 20),
               confirmPassword,
               const SizedBox(height: 30),

            Row(
              children: [
                Padding(
                   padding: const EdgeInsets.all(15),
                   child: Material(
                     elevation: 5.0,
                     borderRadius: BorderRadius.circular(25.0),
                     color: Colors.blue,
                     child: MaterialButton(
                      padding: const EdgeInsets.fromLTRB(
                        35.0, 13.0, 35.0, 13.0),
                        child: const Text('Register',
                        style: TextStyle(
                          color: Colors.white,
                        fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                        ),
                        
                       onPressed: () {}
                       ),
                     ),
                   ),
                  const SizedBox(width: 20.0),
                Padding(
                   padding: const EdgeInsets.all(15),
                   child: Material(
                     elevation: 5.0,
                     borderRadius: BorderRadius.circular(25.0),
                     color: Colors.blue,
                     child: MaterialButton(
                      padding: const EdgeInsets.fromLTRB(
                        35.0, 13.0, 35.0, 13.0),
                        child: const Text('Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                        
                         ), 
                       onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: ((context) => const LoginScreen()))
                       );
                       }
                       ),
                     ),
                   ), 

                   ],
                  ),
                 ],
                ),
              ),
            ),
          ),
        ),
       ),
      );
    
  }
}