class Place {
  final String title;
  final int price;
  final String location;
  final String placeName;
  final String? image;

  Place({
    required this.title,
    required this.price,
    required this.location,
    required this.placeName,
    this.image,
  });
}

List<Place> mockPlaces = [
  Place(
    title: "PCR Swab Test (Drive Thru) Hasil 1 Hari Kerja",
    price: 1400000,
    location: "Dukuh Pakis, Surabaya",
    placeName: "Lenmarc Surabaya",
    image: "https://kenangan.s3-ap-southeast-1.amazonaws.com/1654662462422-tmp-1-1654662462407",
  ),
  Place(
    title: "PCR Swab Test (Drive Thru) Hasil 1 Hari Kerja",
    price: 1400000,
    location: "Dukuh Pakis, Surabaya",
    placeName: "Lenmarc Surabaya",
  ),
  Place(
    title: "PCR Swab Test (Drive Thru) Hasil 1 Hari Kerja",
    price: 1400000,
    location: "Dukuh Pakis, Surabaya",
    placeName: "Lenmarc Surabaya",
  ),
];
