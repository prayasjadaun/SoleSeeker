import 'package:e_commerce_app/models/shoe.dart';
import 'package:flutter/foundation.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        price: '200',
        imagepath: 'assets/images/zoomfreak.jpg',
        desciption: 'The forward-thinking design of his latest signature shoe',
        name: 'Zoom FREAK'),
    Shoe(
        price: '675',
        imagepath: 'assets/images/kdtrey.png',
        desciption: 'The forward-thinking design of his latest signature shoe',
        name: 'KD Trey 5'),
    Shoe(
        price: '760',
        imagepath: 'assets/images/kyrie.jpg',
        desciption:
            'He is one of the most popular and talented players in the NBA, and his signature shoes are just as popular. ',
        name: 'KYRIE '),
    Shoe(
        price: '348',
        imagepath: 'assets/images/shoes11.jpg',
        desciption: 'The forward-thinking design of his latest signature shoe',
        name: 'Nike'),
    Shoe(
        price: '198',
        imagepath: 'assets/images/shoes12.jpg',
        desciption:
            ' If you are in the business of selling shoes online, you know that effective shoe descriptions are crucial to making sales.',
        name: 'Air Jordan'),
    Shoe(
        price: '108',
        imagepath: 'assets/images/shoes10.jpg',
        desciption: 'We will highlight the importance of a good shoe product copy which will help you differentiate from the competition.',
        name: 'Nike'),
    Shoe(
        price: '348',
        imagepath: 'assets/images/shoes9.jpeg',
        desciption: 'The design of these running shoes is sleek.” is written in a passive voice.',
        name: 'Nike'),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
