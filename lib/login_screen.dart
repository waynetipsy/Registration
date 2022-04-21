import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
   final userNameEditingController = TextEditingController();
   final passwordEditingController = TextEditingController();

   final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    final userNameField = TextFormField(
      autofocus: false,
      controller: userNameEditingController,
      keyboardType: TextInputType.name,
      onSaved: (value) {
        userNameEditingController.text = value!;
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

       final passwordField = TextFormField(
      autofocus: false,
      controller: passwordEditingController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) {
        passwordEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.mail),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: 'password',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        ),
       );

    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue ,
        centerTitle: true,
        title: const Text('Login Screen'),
      ),
      body:  Center(
        child:  SingleChildScrollView(
          child: Container(
            color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Form(
              key: _formKey,
              child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               const SizedBox(height: 20.0),
               userNameField,
               const SizedBox(height: 20.0),
               passwordField,
               const SizedBox(height: 30),

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
                        
                       onPressed: () {}
                       ),
                     ),
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