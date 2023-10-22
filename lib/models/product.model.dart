class Product {
  Product({
    required this.name,
    required this.rating,
    required this.image,
    required this.price,
    required this.isAvailable,
  });

  final String name;
  final int rating;
  final String image;
  final int price;
  final bool isAvailable;
}

List<Product> productMock = [
  Product(
    name: "Suntik Steril",
    rating: 5,
    image: "",
    price: 10000,
    isAvailable: true,
  ),
  Product(
    name: "Suntik Steril",
    rating: 5,
    image: "",
    price: 10000,
    isAvailable: true,
  ),
  Product(
    name: "Suntik Steril",
    rating: 5,
    image: "",
    price: 10000,
    isAvailable: true,
  ),
  Product(
    name: "Suntik Steril",
    rating: 5,
    image: "",
    price: 10000,
    isAvailable: true,
  ),
];
