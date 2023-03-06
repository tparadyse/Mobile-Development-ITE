import 'package:flutter/material.dart';
import 'package:manhwas/home_page.dart';

import '../main_drawer.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
          leading: IconButton(
              onPressed: () {
                final ruta =
                    MaterialPageRoute(builder: (context) => const HomePage());
                Navigator.pushReplacement(context, ruta);
              },
              icon: const Icon(Icons.arrow_back_ios)),
        ),
        drawer: const MainDrawer(),
        body: Column(
          children: [
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.settings_accessibility),
              title: const Text('Acceblity'),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.wallet),
              title: const Text('Billing Details'),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.manage_accounts),
              title: const Text('User Management'),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.info),
              title: const Text('Information'),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.support_agent),
              title: const Text('Help Center'),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.logout),
              title: const Text('Log Out'),
            ),
          ],
        ));
  }
}
