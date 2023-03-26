import 'package:flutter/material.dart';
import 'pages/login_page.dart';
//import 'inputs.dart';
import 'pages/register_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RegisterPage(),
    );
  }
}


/* SafeArea(
        child: Column(
          children: [
            const Text(
              'Join us now !',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            const SizedBox(height: 15),
            const Inputs(
              labelInput: 'Name',
              obscureText: false,
              controller: null,
            ),
            const Inputs(
              labelInput: 'Last Name',
              obscureText: false,
              controller: null,
            ),
            Inputs(
              labelInput: 'Username',
              obscureText: false,
              controller: usernameController,
            ),
            const Inputs(
              labelInput: 'Email',
              obscureText: false,
              controller: null,
            ),
            Inputs(
              labelInput: 'Password',
              obscureText: true,
              controller: passwordController,
            ),
            const SizedBox(height: 15),
            Text(
              'Social Signup',
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.facebook)),
                IconButton(onPressed: () {}, icon: Icon(Icons.mail)),
                IconButton(onPressed: () {}, icon: Icon(Icons.messenger)),
              ],
            )
          ],
        ),
      ), */