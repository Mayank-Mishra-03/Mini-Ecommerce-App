import 'package:flutter/material.dart';
import 'package:third_flutter/components/bottom_nav.dart';
import 'package:third_flutter/pages/cart_page.dart';
import 'package:third_flutter/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigationBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [ShopPage(), CartPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigationBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu),
            );
          },
        ),
      ),
      drawer: _drawer(),
      body: _pages[_selectedIndex],
    );
  }

  Drawer _drawer() {
    return Drawer(
      backgroundColor: Colors.grey[900],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
                child: Image.asset("assets/nike.png", color: Colors.white),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: ListTile(
                  leading: Icon(Icons.home, color: Colors.white, size: 30),
                  title: Text(
                    "Home",
                    style: TextStyle(color: Colors.grey[300], fontSize: 20),
                  ),
                  onTap: () {},
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: ListTile(
                  leading: Icon(Icons.info, color: Colors.white, size: 30),
                  title: Text(
                    "About",
                    style: TextStyle(color: Colors.grey[300], fontSize: 20),
                  ),
                  onTap: () {},
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20.0, bottom: 25),
            child: ListTile(
              leading: Icon(Icons.logout, color: Colors.white, size: 30),
              title: Text(
                "Logout",
                style: TextStyle(color: Colors.grey[300], fontSize: 20),
              ),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
