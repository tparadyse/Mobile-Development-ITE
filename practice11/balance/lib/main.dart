import 'package:balance/provider/ui_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/home_page.dart';
import 'package:balance/pages/add_entries.dart';
import 'package:balance/pages/add_expenses.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UIProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
          appBarTheme: AppBarTheme(backgroundColor: Colors.grey[900]),
          scaffoldBackgroundColor: Colors.grey[900],
          primaryColorDark: Colors.grey[800],
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey[500],
          )),
      initialRoute: 'home',
      routes: {
        'home': (_) => const HomePage(),
        'addEntries': (_) => const AddEntries(),
        //'addExpenses': (_) => const AddExpenses(),
      },
    );
  }
}
