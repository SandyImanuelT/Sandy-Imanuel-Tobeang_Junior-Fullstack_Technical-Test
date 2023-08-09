class KingDeals {
  final String price, image, name;

  KingDeals({
    required this.name,
    required this.image,
    required this.price,
  });
}

List kingdeals = [
  KingDeals(
      image: 'assets/images/kingdeals1.jpg',
      price: 'Rp 45.000,-',
      name: 'Double Nasi Goreng'),
  KingDeals(
      image: 'assets/images/kingdeals2.jpg',
      price: 'Rp 28.000,-',
      name: 'Nasi Uduk Komplit'),
  KingDeals(
      image: 'assets/images/kingdeals3.jpg',
      price: 'Rp. 35.000,-',
      name: 'Martabak Special'),
  KingDeals(
      image: 'assets/images/kingdeals4.jpg',
      price: 'Rp. 22.000,-',
      name: 'Bubur Candil'),
];
