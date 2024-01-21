import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget bottomNav() {
  return Container(
    padding: const EdgeInsets.all(0),
    decoration: BoxDecoration(boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.2),
        blurRadius: 10,
        spreadRadius: 0,
        offset: const Offset(0, -5),
      ),
    ]),
    child: ClipRRect(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: TabBar(
          labelColor: Colors.green,
          tabs: const [
            Tab(
              icon: Icon(
                Icons.home_outlined,
                size: 28,
              ),
              text: "Home",
            ),
            Tab(
              icon: Icon(
                Icons.bookmark_outline,
                size: 28,
              ),
              text: "Saved",
            ),
            Tab(
              icon: Icon(
                Icons.notification_add_rounded,
                size: 28,
              ),
              text: "Notifikasi",
            ),
            Tab(
              icon: Icon(
                Icons.person_outline,
                size: 28,
              ),
              text: "Saved",
            ),
          ],
          dividerColor: Colors.transparent,
          unselectedLabelColor: Color(0xFF19191B),
          labelStyle: GoogleFonts.poppins(fontSize: 14),
          indicatorSize: TabBarIndicatorSize.tab,
          indicator: const BoxDecoration(
            border: Border(top: BorderSide(color: Colors.green, width: 4)),
          ),
        ),
      ),
    ),
  );
}
