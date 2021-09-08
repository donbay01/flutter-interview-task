class ProductModel {
  final String image;
  final String distance;
  final String name;
  final String price;
  final String rating;

  ProductModel(this.name, this.price, this.rating, this.image, this.distance);
}

List <ProductModel> products = [
  ProductModel('Mason York', '3/hr', '3.7/10', 'assets/dog2.png',
      '4 km'),
  ProductModel('Perter Parker', '7/hr', '4.7/10', 'assets/IMAGE.png',
      '7 km'),
  ProductModel('Mark Greene', '4/hr', '4.0/10', 'assets/dog1.png',
      '14 km'),
];