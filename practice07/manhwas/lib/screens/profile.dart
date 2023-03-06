import 'package:flutter/material.dart';
import 'package:manhwas/home_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
          leading: IconButton(
              onPressed: () {
                final ruta =
                    MaterialPageRoute(builder: (context) => const HomePage());
                Navigator.pushReplacement(context, ruta);
              },
              icon: const Icon(Icons.arrow_back_ios)),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(isDark ? Icons.light_mode : Icons.dark_mode))
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Stack(children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: const Image(
                          image: NetworkImage(
                              'https://assets.reedpopcdn.com/hollow-knight-switch-analisis-1530357210277.jpg/BROK/resize/1920x1920%3E/format/jpg/quality/80/hollow-knight-switch-analisis-1530357210277.jpg'),
                          fit: BoxFit.fill),
                    ),
                  ),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color.fromARGB(255, 169, 63, 86)),
                    child: const Icon(
                      Icons.edit,
                      color: Colors.black,
                      size: 23,
                    ),
                  )
                ]),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Juan Diaz',
                  style: TextStyle(fontSize: 22, color: Colors.black),
                ),
                const Text(
                  '@PARADYSE',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: const [
                        Text(
                          'Joined Feb 2023',
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text(
                          'Following Reads 3',
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 169, 63, 86),
                        side: BorderSide.none,
                        shape: const StadiumBorder()),
                    child: const Text('Edit profile',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Divider(),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ));
  }
}
