class Produk {
  String title,
      merek,
      harga,
      image,
      deskripsi;
  int stok;
  double rating;

  Produk(
      this.title, this.merek, this.harga, this.image, this.rating, this.stok, this.deskripsi);
}

final List<Produk> produks = [
  Produk('MSI GTX 1650', 'MSI',
      'Rp 1.250.000', 'assets/1.jpg', 3.5, 3, 'VGA MSI Low-end dengan VRAM 2GB'),
  Produk('Monitor Asus 24"', 'Asus', 'Rp 1.500.000',
      'assets/2.jpg', 4.5, 7, 'Monitor Asus 24" dengan refresh rate 60hz'),
  Produk('Galax RTX 2080 TI', 'Galax',
      'Rp 18.460.000', 'assets/3.jpg', 5.0, 2, 'VGA Galax High-end dengan VRAM 11GB'),
  Produk('Mouse Razer', 'Razer', 'Rp 1.580.000',
      'assets/4.jpg', 5.0, 0, 'Mouse ini ga dijual, cuma pamer aja. hehe'),
  Produk('Headset Logitech', 'Logitech',
      'Rp 890.000', 'assets/5.jpg', 4.8, 4, 'Mouse logitech gaming dengan noise cancelation'),
  Produk('Monitor LG 24" ', 'LG',
      'Rp 1.257.000', 'assets/6.jpg', 4.5, 6, 'Monitor LG 24" dengan refresh rate 60hz'),
];
