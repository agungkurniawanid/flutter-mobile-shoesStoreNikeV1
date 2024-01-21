import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_imgwidget/components/appbar/appbar_dashboard.dart';
import 'package:project_imgwidget/components/card/dashboard_card.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(color: Colors.white),
      child: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [
          appBarDashboard(),
          const SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.only(left: 25.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "NIKE Shoes Store",
                style: GoogleFonts.poppins(
                    fontSize: 28.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(height: 50),
          dashboardCard(context),
        ]),
      )),
    );
  }
}
