import 'package:flutter/material.dart';
import 'package:ikea_clone/core/base/view/onboard/select_country_view.dart';
import 'package:ikea_clone/core/components/text.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Image.asset(
            "assets/images/icon_ikea_logo.png",
          ),
        ),
        leadingWidth: 100,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.5),
              size: 26,
            ),
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            Headline1(text: 'Explore and get inspired'),
            SizedBox(height: 20),
            HomeCarousel(),
          ],
        ),
      ),
    );
  }
}

class HomeCarousel extends StatelessWidget {
  const HomeCarousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        BlackTint(
          child: Image.asset(
            "assets/images/image_home.jpg",
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.62,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.65,
          height: MediaQuery.of(context).size.height * 0.15,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                const Expanded(
                  flex: 10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Body(
                        text: 'SVARTISDAL',
                        fontWeight: FontWeight.w800,
                        letterSpacing: -0.5,
                      ),
                      Body(
                        text: 'Modern and minimalistic white covered light...',
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.5,
                      ),
                      Headline1(
                        text: '£70',
                      ),
                    ],
                  ),
                ),
                VerticalDivider(color: Theme.of(context).colorScheme.onSurface.withOpacity(0.1)),
                const Expanded(
                  flex: 1,
                  child: Icon(Icons.chevron_right, size: 30),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
