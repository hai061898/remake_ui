class PlaceInfo {
  final String location, image, name;
  final double star;

  PlaceInfo({
    required this.name,
    required this.image,
    required this.location,
    required this.star,
  });
}

List places = [
  PlaceInfo(
    image: 'assets/img/bg3.jpg',
    location: 'Earth',
    name: 'Mount',
    star: 4.0,
  ),
  PlaceInfo(
    image: 'assets/img/bg2.jpg',
    location: 'Lake star',
    name: 'Ha Long',
    star: 4.5,
  ),
  PlaceInfo(
    image: 'assets/img/bg7.jpg',
    location: 'Nepal',
    name: 'Mount Everest',
    star: 4.7,
  ),
];
