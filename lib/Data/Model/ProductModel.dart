import 'package:route_task_flutter/Domain/Entities/ProductEntity.dart';

class ProductModel extends ProductEntity {
  ProductModel({required super.image, required super.title, required super.discription, required super.price, required super.discount, required super.rating});
  factory ProductModel.fromApi(Map<String,dynamic> json){
    return ProductModel(
        image: json["thumbnail"],
        title: json["title"],
        discription: json["description"],
        price: json["price"],
        discount: json["discountPercentage"],
        rating: json["rating"]);


  }
}
