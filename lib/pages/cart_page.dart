import 'package:e_commerce_app/models/cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/cart_items.dart';
import '../models/shoe.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) =>Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('My Cart', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
          SizedBox(height: 25,),
          
          Expanded(child: ListView.builder(
            itemCount: value.getUserCart().length,
              itemBuilder: (context, index){
            Shoe individualShoe = value.getUserCart()[index];
            return CartItem(shoe: individualShoe,);
          }))
        ],
      ),
    ));
  }
}
