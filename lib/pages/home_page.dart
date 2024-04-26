import 'package:e_commerce_app/components/bottom_nav_bar.dart';
import 'package:e_commerce_app/pages/cart_page.dart';
import 'package:e_commerce_app/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [const ShopPage(), const CartPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const Padding(
             padding: EdgeInsets.symmetric(horizontal: 25.0),
             child: Text('The Shoe Spot', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900, fontSize: 25),),
           ),
            CircleAvatar(backgroundColor: Colors.transparent,
              radius: 30,
              child: Image.asset('assets/images/nike.png', ),)
        ],),
        
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Colors.grey.shade200,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(child: Image.asset('assets/images/nike.png',color: Colors.white,)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Divider(
                    color: Colors.grey[800],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: ListTile(
                      leading: Icon(Icons.home, color: Colors.white,),
                      title: Text('Home', style: TextStyle(color: Colors.white,),
                      )
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: ListTile(
                      leading: Icon(Icons.info, color: Colors.white,),
                      title: Text('About', style: TextStyle(color: Colors.white,),
                      )
                  ),
                ),
              ],
            ),


            const Padding(
              padding: EdgeInsets.only(left: 25.0, bottom: 25),
              child: ListTile(
                  leading: Icon(Icons.logout, color: Colors.white,),
                  title: Text('Logout', style: TextStyle(color: Colors.white,),
                  )
              ),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
