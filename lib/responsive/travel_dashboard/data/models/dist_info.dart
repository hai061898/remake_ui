class DistInfo {
  final String location, image, name;
  final double star, price;

  DistInfo({
    required this.name,
    required this.image,
    required this.location,
    required this.star,
    required this.price,
  });
}

List distination = [
  DistInfo(
    image: 'assets/img/bg6.jpg',
    location: 'Desert',
    name: 'Mount Sand',
    star: 4.0,
    price: 150,
  ),
  DistInfo(
    image: 'assets/img/bg4.jpg',
    location: 'canyon',
    name: 'Ice Land',
    star: 4.5,
    price: 100,
  ),
  DistInfo(
    image: 'assets/img/bg2.jpg',
    location: 'Lake star',
    name: 'Ha Long',
    star: 4.5,
    price: 130,
  ),
];