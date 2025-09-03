

 class ProductModel{
  final String image;
  final String name;
  final String price;
  final String description;

  ProductModel( {
    required this.image,
    required this.name,
    required this.price,
    required this.description,});

   static List<ProductModel>products=[
      ProductModel(
        image: "assets/products/Rectangle 344.png",
        name: "Octo ",
        price: "120",
        description: "reversible angora cardigan",
         ),
      ProductModel(
          image: "assets/products/Rectangle 344 (1).png",
          name: "Octo ",
          price: "100",
          description: "reversible angora cardigan",
         ),
      ProductModel(
          image: "assets/products/Rectangle 344 (2).png",
          name: "Octo ",
          price: "150",
          description: "reversible angora cardigan",
          ),
      ProductModel(
          image: "assets/products/Rectangle 344 (3).png",
          name: "Octo",
          price: "160",
          description: "reversible angora cardigan",
         ),
      ProductModel(
          image: "assets/products/Rectangle 344 (4).png",
          name: "Octo",
          price: "100",
          description: "reversible angora cardigan",
         ),
      ProductModel(
          image: "assets/products/Rectangle 344 (5).png",
          name: "Octo",
          price: "140",
          description: "reversible angora cardigan",
          ),


    ];
}