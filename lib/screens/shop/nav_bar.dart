
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> with TickerProviderStateMixin {
  int _selectedIndex = 0;
  PageController _pageController = PageController();
  List<AnimationController> _animationControllers = [];
  List<Animation<double>> _animations = [];

  static const List<Widget> _pages = <Widget>[
    HomeScreen(key: PageStorageKey('HomeScreen')),
    CategoryScreen(key: PageStorageKey('CategoryScreen')),
    CartScreen(key: PageStorageKey('CartScreen')),
    SaveItemScreen(key: PageStorageKey('SaveItemScreen')),
    AccountScreen(key: PageStorageKey('AccountScreen')),
  ];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 5; i++) {
      AnimationController controller = AnimationController(
        duration: const Duration(milliseconds: 300),
        vsync: this,
      );
      _animationControllers.add(controller);
      _animations.add(CurvedAnimation(parent: controller, curve: Curves.elasticOut));
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.jumpToPage(index);
      _animateIcon(index);
    });
  }

  void _animateIcon(int index) {
    _animationControllers[index].forward().then((_) {
      _animationControllers[index].reverse();
    });
  }

  @override
  void dispose() {
    for (var controller in _animationControllers) {
      controller.dispose();
    }
    _pageController.dispose();
    super.dispose();
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
          Positioned(
            bottom: 20.0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildNavItem(Icons.home, 0),
                  _buildNavItem(Icons.category, 1),
                  SizedBox(width: 40), // Space for FAB
                  _buildNavItem(Icons.save, 3),
                  _buildNavItem(Icons.account_circle, 4),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 40.0,
            left: MediaQuery.of(context).size.width / 2 - 30,
            child: FloatingActionButton(
              onPressed: () {
                setState(() {
                  _selectedIndex = 2; // Navigate to Cart page
                  _pageController.jumpToPage(2);
                  _animateIcon(2);
                });
              },
              child: Icon(Icons.shopping_cart),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _buildNavItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: AnimatedBuilder(
        animation: _animations[index],
        builder: (context, child) {
          return Transform.scale(
            scale: _animations[index].value,
            child: Icon(
              icon,
              color: _selectedIndex == index ? Colors.grey : Colors.white,
              size: _selectedIndex == index ? 30 : 24,
            ),
          );
        },
      ),
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
