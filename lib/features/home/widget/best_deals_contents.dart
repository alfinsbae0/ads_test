class BestDealsProducts {
  String titleProduct;
  String priceProduct;
  String image;
  String rating;

  BestDealsProducts({
    required this.titleProduct,
    required this.priceProduct,
    required this.image,
    required this.rating,
  });
}

List<BestDealsProducts> bestDealsList = [
  BestDealsProducts(
    titleProduct: "Accu-check Active Test Strip",
    image: 'assets/images/product_example1.png',
    priceProduct: 'Rp 112.000',
    rating: "4.2",
  ),
  BestDealsProducts(
    titleProduct: "Omron HEM-8712 BP Monitor",
    image: 'assets/images/product_example2.png',
    priceProduct: 'Rp 150.000',
    rating: "4.2",
  ),
];
