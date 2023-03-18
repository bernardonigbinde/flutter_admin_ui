import 'package:flutter/material.dart';

import '../dashboard/dashboard_screen.dart';
import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: SideMenu(),
          ),
          Expanded(
            flex: 5,
            child: DashboardScreen(),
          ),
        ],
      ),
    );
  }
}