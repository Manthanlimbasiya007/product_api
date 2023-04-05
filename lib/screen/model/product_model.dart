class ProductModel
{
  String? title, description, category, image;
  double? price;
  // rating? ratobj;
  int? id;

  ProductModel({this.id,
    this.price,
    this.title,
    this.category,
    this.image,
    this.description,
    // this.ratobj
  });

  ProductModel productModelfactory(Map m1) {
    id = m1['id'];
    description = m1['description'];
    title = m1['title'];
    image = m1['image'];
    category = m1['category'];
    price = m1['price']==null?0.0:m1['price'].toDouble();
   // ratobj = rating().ratingfromjson(m1['rating']);

    ProductModel p1 = ProductModel(
      id: id,
      description: description,
      title: title,
      image: image,
      category: category,
      price: price,
      //ratobj: ratobj,
    );
    return p1;
  }
}
// class rating {
//   double? rate;
//   int? count;
//
//   rating({this.rate,this.count});
//   rating ratingfromjson(Map m1) {
//     rate = m1['rate']==null?0.0:m1['rate'].toDouble();
//     count = m1['count'];
//     rating r1 = rating(
//       rate: rate,
//       count: count,
//     );
//     return r1;
//   }
// }