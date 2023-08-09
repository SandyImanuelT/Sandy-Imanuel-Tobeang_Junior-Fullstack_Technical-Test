class Recomended {
  final String price, image, name;

  Recomended({
    required this.name,
    required this.image,
    required this.price,
  });
}

List rec = [
  Recomended(
      image: 'assets/images/rec1.jpg', price: 'Rp 25.000,-', name: 'Soto Ayam'),
  Recomended(
      image: 'assets/images/rec2.jpg',
      price: 'Rp 30.000,-',
      name: 'Rawon Sapi'),
  Recomended(
      image: 'assets/images/rec3.jpg', price: 'Rp 16.000,-', name: 'Es Dawet'),
  Recomended(
      image: 'assets/images/rec4.jpg',
      price: 'Rp 20.000,-',
      name: 'Es Pisang Ijo'),
];
