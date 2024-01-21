import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_imgwidget/models/sandal.dart';
import 'package:project_imgwidget/screens/detail_sepatu_screen.dart';
import 'package:intl/intl.dart';

Widget dashboardCard(BuildContext context) {
  List<Sepatu> sepatu = Sepatu.getSepatu();

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
    child: Column(
      children: sepatu.map((Sepatu sepatuItem) {
        return Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFFEFEFEF),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.favorite_outline,
                              size: 32,
                            ),
                            const Spacer(),
                            Text(
                              sepatuItem.nama,
                              style: GoogleFonts.poppins(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                                NumberFormat.currency(
                                  locale: 'id', // Lokal untuk Bahasa Indonesia
                                  symbol: 'Rp. ',
                                  decimalDigits:
                                      0, // Jumlah digit di belakang koma
                                ).format(sepatuItem.harga),
                                style: GoogleFonts.poppins(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500,
                                )),
                            const SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return DetailSepatu(
                                    sepatu: 'ok ${sepatuItem.nama}',
                                    fotospt: "assets/${sepatuItem.foto}",
                                    harga: sepatuItem.harga,
                                    rating: sepatuItem.rating,
                                  );
                                }));
                              },
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.black),
                              ),
                              child: Text(
                                "Detail",
                                style: GoogleFonts.poppins(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow[800],
                                  size: 34,
                                ),
                                Text(
                                  sepatuItem.rating.toString(),
                                  style: GoogleFonts.poppins(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 30,
                  right: -40.0,
                  child: Hero(
                    tag: 'ok ${sepatuItem.nama}',
                    child: Image(
                      image: AssetImage("assets/${sepatuItem.foto.toString()}"),
                      width: 280,
                    ),
                  ),
                ),
              ],
            ),
            if (sepatu.indexOf(sepatuItem) < sepatu.length - 1)
              const SizedBox(
                height: 45,
              ),
          ],
        );
      }).toList(),
    ),
  );
}
