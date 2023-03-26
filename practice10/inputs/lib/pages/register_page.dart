import 'package:flutter/material.dart';

import 'package:inputs/components/my_textfield.dart';
import 'package:inputs/components/square_tile.dart';
import 'package:inputs/components/my_button.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final emailController = TextEditingController();

  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/albatrosgaming.png',
                height: 150,
                width: 150,
              ),

              // welcome message!
              /* Text(
                'welcome to TECNM Ensenada Esports',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ), */

              const SizedBox(height: 20),

              // name textfield
              MyTextField(
                controller: nameController,
                hintText: 'Name',
                icon: const Icon(Icons.book),
                fillColor: Colors.grey.shade200,
                borderSide: BorderSide(color: Colors.grey.shade400),
              ),

              const SizedBox(height: 10),

              // ussername textfield
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                icon: const Icon(Icons.person),
                fillColor: Colors.grey.shade200,
                borderSide: BorderSide(color: Colors.grey.shade400),
              ),

              const SizedBox(height: 10),

              // email textfield
              MyTextField(
                controller: emailController,
                hintText: 'Email',
                icon: const Icon(Icons.mail),
                fillColor: Colors.grey.shade200,
                borderSide: BorderSide(color: Colors.grey.shade400),
              ),

              const SizedBox(height: 10),

              // password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
                icon: const Icon(Icons.remove_red_eye),
                fillColor: Colors.grey.shade200,
                borderSide: BorderSide(color: Colors.grey.shade400),
              ),

              const SizedBox(height: 20),

              // sign in button
              MyButton(
                onTap: signUserIn,
                textButton: 'Register',
              ),

              const SizedBox(height: 30),

              // or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // google + apple sign in buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  // google button
                  SquareTile(imagePath: 'assets/google.png'),

                  SizedBox(width: 25),

                  // facebook button

                  SquareTile(imagePath: 'assets/facebook.png'),

                  SizedBox(width: 25),

                  // apple button
                  SquareTile(imagePath: 'assets/apple.png')
                ],
              ),

              const SizedBox(height: 50),

              // not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'I have an account?',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    'Log In',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
