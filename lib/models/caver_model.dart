class CaverModel{
  final String image;
  final String name ;

  CaverModel({
    required this.image, 
    required this.name});
  
  
  
  static List<CaverModel> cavers=[
    CaverModel(image: "assets/cavers/Rectangle 440.png", name: "Black collection"),
    CaverModel(image: "assets/cavers/Type=Full.png", name: "Winter collection "),
    CaverModel(image: "assets/cavers/Rectangle 441.png", name: "HAE BY HAEKIM")

  ];
  
}

