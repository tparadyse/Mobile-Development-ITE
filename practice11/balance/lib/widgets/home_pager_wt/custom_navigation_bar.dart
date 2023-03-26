import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:balance/provider/ui_provider.dart';

class CustomNavigationBar extends StatelessWidget {
  CustomNavigationBar({super.key});

  //var _index = 0;

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UIProvider>(context);

    return BottomNavigationBar(
      currentIndex: uiProvider.bnbIndex,
      onTap: (int i) => uiProvider.bnbIndex = i,
      elevation: 0,
      items: const [
        BottomNavigationBarItem(
          label: 'Balance',
          icon: Icon(Icons.account_balance_wallet_outlined),
        ),
        BottomNavigationBarItem(
          label: 'Grafics',
          icon: Icon(Icons.bar_chart_outlined),
        ),
        BottomNavigationBarItem(
          label: 'Settings',
          icon: Icon(Icons.settings_outlined),
        )
      ],
    );
  }
}
