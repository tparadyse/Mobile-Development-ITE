import 'package:flutter/material.dart';
import 'package:navegacion/screens/help.dart';
import 'package:navegacion/screens/login.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: const Text('BackEnd Login'),
            subtitle: const Text('sysadmin'),
            trailing: const Icon(Icons.login_outlined),
            leading: const Icon(Icons.home),
            onTap: () {
              final ruta =
                  MaterialPageRoute(builder: (context) => const LoginScreen());
              Navigator.pushReplacement(context, ruta);
            },
          ),
          ListTile(
            title: const Text('Support'),
            subtitle: const Text('QA'),
            trailing: const Icon(Icons.login_outlined),
            leading: const Icon(Icons.home),
            onTap: () {
              final ruta =
                  MaterialPageRoute(builder: (context) => const HelpPage());
              Navigator.pushReplacement(context, ruta);
            },
          )
        ],
      ),
    );
  }
}
