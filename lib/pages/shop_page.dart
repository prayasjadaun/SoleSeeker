import 'package:e_commerce_app/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/shoe_tile.dart';
import '../models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addShosToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);
    showDialog(
        context: context,
        builder: (context) => const AlertDialog(
              title: Text('Successfully added!'),
              content: Text('Check your cart'),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Column(
              children: [
                Container(
                  padding: EdgeInsets.all(12),
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Search',
                        style: TextStyle(color: Colors.black),
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25.0),
                  child: Text(
                    'everyone flies.. some fly longer than others',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Hot Picks 🔥',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        Shoe shoe = value.getShoeList()[index];
                        return ShoeTile(
                          shoe: shoe,
                          onTap: () => addShosToCart(shoe),
                        );
                      }),
                ),
                // const Padding(
                //   padding: EdgeInsets.only(top: 15.0, left: 25.0, right: 25.0),
                //   child: Divider(
                //     color: Colors.transparent,
                //   ),
                // ),
              ],
            ));
  }
}
