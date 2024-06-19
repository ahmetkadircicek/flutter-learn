import 'package:flutter/material.dart';
import 'package:ikea_clone/core/base/view/home_view.dart';
import 'package:ikea_clone/core/base/view/product_details_view.dart';
import 'package:ikea_clone/core/base/view/search_view.dart';

class MainPageView extends StatelessWidget {
  const MainPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          // physics: const NeverScrollableScrollPhysics(),
          children: const [
            HomeView(),
            SearchView(),
            ProductDetailsView(),
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
        decoration: const BoxDecoration(),
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
