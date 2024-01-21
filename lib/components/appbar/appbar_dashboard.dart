import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget appBarDashboard() {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(
          Icons.menu,
          size: 32,
        ),
        const SizedBox(width: 20),
        Expanded(
          child: TextField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search),
              suffixIcon: IconButton(onPressed: () {}, icon: Icon(Icons.tune)),
              hintText: "Cari Barang",
              hintStyle:
                  GoogleFonts.poppins(fontSize: 16.0, color: Colors.black),
              filled: true,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              fillColor: const Color(0xFFF2F2F2),
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  borderSide: BorderSide.none),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(100))),
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        const Icon(Icons.shopping_bag_outlined, size: 32),
      ],
    ),
  );
}
