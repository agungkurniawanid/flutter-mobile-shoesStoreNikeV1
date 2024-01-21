class Sepatu {
  late String nama, foto;
  late int harga;
  late double rating;

  Sepatu(
      {required this.nama,
      required this.foto,
      required this.harga,
      required this.rating});

  static List<Sepatu> getSepatu() {
    List<Sepatu> sepatuSaya = [
      Sepatu(nama: "Air Max", foto: "Green 1.png", harga: 1200000, rating: 4.5),
      Sepatu(
          nama: "Air Force",
          foto: "nike main.png",
          harga: 1000000,
          rating: 4.2),
      Sepatu(
          nama: "React Element",
          foto: "Shoe 1.png",
          harga: 900000,
          rating: 4.7),
      Sepatu(nama: "Free Run", foto: "toppng.png", harga: 800000, rating: 4.0),
      Sepatu(
          nama: "Epic React",
          foto: "Yellow Shoe.png",
          harga: 1500000,
          rating: 4.8),
      // Sepatu(nama: "Zoom Pegasus", harga: 1100000, rating: 4.4),
      // Sepatu(nama: "Air Zoom", harga: 1300000, rating: 4.3),
      // Sepatu(nama: "Joyride Run", harga: 1400000, rating: 4.6),
      // Sepatu(nama: "Renew Run", harga: 950000, rating: 4.1),
      // Sepatu(nama: "Air Zoom", harga: 1600000, rating: 4.9),
    ];
    return sepatuSaya;
  }
}
