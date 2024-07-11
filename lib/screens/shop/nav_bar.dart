

import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  PageController _pageController = PageController();

  static const List<Widget> _pages = <Widget>[
    HomeScreen(key: PageStorageKey('HomeScreen')),
    CategoryScreen(key: PageStorageKey('CategoryScreen')),
    CartScreen(key: PageStorageKey('CartScreen')),
    SaveItemScreen(key: PageStorageKey('SaveItemScreen')),
    AccountScreen(key: PageStorageKey('AccountScreen')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            physics: NeverScrollableScrollPhysics(),
            children: _pages,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: BottomNavigationBar(
                  backgroundColor: Colors.black,
                  type: BottomNavigationBarType.fixed,
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.category),
                      label: 'Category',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.save),
                      label: 'Save Item',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.account_circle),
                      label: 'Account',
                    ),
                  ],
                  currentIndex: _selectedIndex,
                  selectedItemColor: Colors.grey,
                  unselectedItemColor: Colors.white,
                  selectedIconTheme: IconThemeData(size: 30),
                  unselectedIconTheme: IconThemeData(size: 24),
                  onTap: _onItemTapped,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 80.0, // Adjust the position as needed
            left: MediaQuery.of(context).size.width / 2 - 30, // Adjust for the size of FAB
            child: FloatingActionButton(
              onPressed: () {
                setState(() {
                  _selectedIndex = 2; // Navigate to Cart page
                  _pageController.jumpToPage(2);
                });
              },
              child: Icon(Icons.shopping_cart),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Home Screen'),
    );
  }
}

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Category Screen'),
    );
  }
}

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Cart Screen'),
    );
  }
}

class SaveItemScreen extends StatelessWidget {
  const SaveItemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Save Item Screen'),
    );
  }
}

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Account Screen'),
    );
  }
}
