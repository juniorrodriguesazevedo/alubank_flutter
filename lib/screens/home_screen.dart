
import 'package:flutter/material.dart';

import '../components/sections/account_points.dart';
import '../components/sections/accounts_actions.dart';
import '../components/sections/header_component.dart';
import '../components/sections/recent_activity.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderComponent(),
            RecentActivity(),
            AccountActions(),
            AccountPoints()
          ]
        ),
      )
    );
  }
}
