class Product {
  final int  id ;
  final String img;
  final String color;
  final String stackimg;
  final String stackimg2;
  final String catg;

  Product({
    required this.id,
    required this.img,
    required this.color,
    required this.stackimg, 
    required this.stackimg2, 
    required this.catg,
  });
    factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      img: json['img'],
      color: json['color'],
      stackimg: json['stackimg'],
      stackimg2: json['stackimg2'],
      catg: json['catg'],
    );
  }

}

final List<Product> productList = [
  
  Product(
    id:1,
    img: "assets/watches/f.png",
    color: "#FF8300",
    stackimg:"assets/watches/s.png",
    stackimg2:"assets/watches/2.png",
    catg: "Fanta"
  ),
  Product(
    id:2,
    img: "assets/watches/ss.png",
    color: "#008B47",
    stackimg:"assets/watches/s.png",
    stackimg2:"assets/watches/2.png",
    catg: "Sprite"
  ),
  Product(
    id:3,
    img: "assets/watches/c.png",
    color: "#F40009",
    stackimg:"assets/watches/s.png",
    stackimg2:"assets/watches/2.png",
    catg: "Cocacola"
  ),
  Product(
    id:4,
    img: "assets/watches/p.png",
    color: "#004B93",
    stackimg:"assets/watches/s.png",
    stackimg2:"assets/watches/2.png",
    catg: "Pepsi"
  ),
  
];


