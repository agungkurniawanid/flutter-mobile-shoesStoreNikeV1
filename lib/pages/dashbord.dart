import 'package:flutter/material.dart';
import 'package:project_imgwidget/screens/dashboard_screen.dart';
import 'package:project_imgwidget/components/bottomav/bottomnav.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: const DashboardScreen(),
        bottomNavigationBar: bottomNav(),
      ),
    );
  }
}
