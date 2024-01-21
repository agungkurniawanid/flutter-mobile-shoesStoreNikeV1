import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class DetailSepatu extends StatefulWidget {
  final String sepatu, fotospt;
  final int harga;
  final double rating;
  const DetailSepatu({
    super.key,
    required this.sepatu,
    required this.fotospt,
    required this.harga,
    required this.rating,
  });

  @override
  State<DetailSepatu> createState() => _DetailSepatuState();
}

class _DetailSepatuState extends State<DetailSepatu> {
  List<int> ukuran = [31, 34, 40, 42, 45, 47, 50];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              expandedHeight: 350,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  color: const Color(0xFFF2F2F2),
                  child: Hero(
                    tag: widget.sepatu,
                    child: Image.asset(widget.fotospt, fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Nike Product",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 30,
                          color: Colors.yellow[600],
                        ),
                        Text(
                          widget.rating.toString(),
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.sepatu,
                      style: GoogleFonts.poppins(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text(
                          NumberFormat.currency(
                                  locale: 'id',
                                  symbol: 'Rp. ',
                                  decimalDigits: 0)
                              .format(widget.harga),
                          style: GoogleFonts.poppins(
                              fontSize: 24,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ukuran : ",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 80,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                color: const Color(0xFFF2F2F2),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                                child: Text(
                              ukuran[index].toString(),
                              style: GoogleFonts.poppins(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )),
                          );
                        },
                        separatorBuilder: (context, index) => const SizedBox(
                          width: 10,
                        ),
                        itemCount: 5,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Deskripsi : ",
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ac justo in arcu tincidunt fermentum. "
                      "Phasellus luctus enim et lacinia auctor. Ut vel elit nec elit tincidunt aliquam. Nullam volutpat neque eu libero interdum, vel fermentum nisl ultricies. "
                      "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aenean vel vulputate libero. "
                      "In hac habitasse platea dictumst. Sed ullamcorper, lacus non pellentesque tincidunt, velit justo laoreet risus, nec accumsan sem orci at libero. "
                      "Duis efficitur enim nec risus volutpat, ac volutpat elit tristique.",
                      style: GoogleFonts.poppins(fontSize: 16, height: 1.5),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        width: 200.0,
        child: FloatingActionButton(
          onPressed: () {
            // Aksi yang dijalankan saat tombol ditekan
          },
          backgroundColor: const Color(0xFF19191B),
          child: Text(
            "Pesan Sekarang",
            style: GoogleFonts.poppins(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
