class Product{
  // to get the idea of what your object should look like check the response data from the api in thunder
  String title;
  double price;
  String more;
  String category;
  String image;
  double ratingValue;
  int ratingCount;

Product({
  required this.category,
  required this.title,
  required this.price, 
  required this.more, 
  required this.image,
  required this.ratingCount,
  required this.ratingValue
  });

  // now we use the factory method to map out the api result to our object
  factory Product.fromJson(var data){
    return Product(category: data["category"], 
    title: data["title"], 
    price: data["price"], 
    more: data["description"], 
    image: data["image"], 
    ratingCount: data["rating"]["count"], 
    ratingValue: data["rating"]["rate"],
    );
  }
}