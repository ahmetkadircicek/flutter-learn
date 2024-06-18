import 'package:flutter/material.dart';
import 'package:ikea_clone/core/base/view/home_view.dart';

class MainPageView extends StatelessWidget {
  const MainPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            HomeView(),
            Center(
              child: Text('Search'),
            ),
            Center(
              child: Text('Profile'),
            ),
            Center(
              child: Text('Favorites'),
            ),
            Center(
              child: Text('Cart'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.5),
              width: 0.5,
            ),
          ),
        ),
        height: MediaQuery.of(context).size.height * 0.1,
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.other_houses_outlined),
              Icon(Icons.search),
              Icon(Icons.person_outline_outlined),
              Icon(Icons.favorite_outline),
              Icon(Icons.shopping_bag_outlined),
            ],
          ),
        ),
      ),
    );
  }
}
