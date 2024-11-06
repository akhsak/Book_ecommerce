import 'dart:convert';

class BoookModel {
  String? id;
  String? title;
  String? description;
  String? price;
  String? image;
  String? author;
  String? category;
  String? v;

  BoookModel({
    this.id,
    this.title,
    this.description,
    this.price,
    this.image,
    this.author,
    this.category,
    this.v,
  });

  BoookModel.fromjson(Map<String, dynamic> json) {
    id = json['_id'];
    title = json['title'];
    description = json['description'];
    price = json['price'].toString();
    image = json['image'];
    author = json['author'];
    category = json['category'];
    v = json['__v'].toString();
  }

  Map<String, dynamic> tojson() {
    return {
      '_id': id,
      'title': title,
      'description': description,
      'price': price,
      'image': image,
      'author': author,
      'category': category,
      '__v': v
    };
  }
}
