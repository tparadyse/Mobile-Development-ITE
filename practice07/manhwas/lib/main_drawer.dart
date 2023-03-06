import 'package:flutter/material.dart';
import 'package:manhwas/screens/profile.dart';
import 'package:manhwas/screens/settings.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: const Color.fromARGB(255, 93, 17, 33),
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    margin: const EdgeInsets.only(top: 35, bottom: 10),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://assets.reedpopcdn.com/hollow-knight-switch-analisis-1530357210277.jpg/BROK/resize/1920x1920%3E/format/jpg/quality/80/hollow-knight-switch-analisis-1530357210277.jpg'),
                            fit: BoxFit.fill)),
                  ),
                  const Text(
                    'PARADYSE',
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text(
              'Profile',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              final ruta =
                  MaterialPageRoute(builder: (context) => const ProfilePage());
              Navigator.pushReplacement(context, ruta);
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text(
              'Settings',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              final ruta =
                  MaterialPageRoute(builder: (context) => const SettingsPage());
              Navigator.pushReplacement(context, ruta);
            },
          ),
          const ListTile(
            leading: Icon(Icons.bookmark),
            title: Text(
              'Bookmarks',
              style: TextStyle(fontSize: 18),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.dynamic_feed),
            title: Text(
              'Lists Reading',
              style: TextStyle(fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}
