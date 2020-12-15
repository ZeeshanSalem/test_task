import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class WomenViewModel extends ChangeNotifier{
   List<CartModel> cart = [
     CartModel(title: "New", image: "assets/bag.png"),
     CartModel(title: "Clothes", image: "assets/geans.png"),
     CartModel(title: "Shoes", image: "assets/shoes.png"),
     CartModel(title: "Accesories", image: "assets/neckless.png"),
   ];
}

class CartModel{
  String title;
  String image;
  CartModel({this.title, this.image});
}