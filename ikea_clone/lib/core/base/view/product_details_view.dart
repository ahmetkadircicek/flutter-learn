import 'package:flutter/material.dart';

import '../../components/text.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.ios_share_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.favorite_outline),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.9,
                width: MediaQuery.of(context).size.width,
                child: PageView(
                  children: const [
                    Placeholder(),
                    Placeholder(),
                    Placeholder(),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                color: Theme.of(context).colorScheme.onSurface,
                height: 2,
                width: MediaQuery.of(context).size.width,
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: SizedBox(
                        width: 100,
                        child: Column(
                          children: [
                            const SizedBox(height: 80, child: Placeholder()),
                            const SizedBox(height: 10),
                            Container(
                              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.2),
                              height: 2,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 60),
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Body(
                    text: 'SVARTISDAL',
                    fontWeight: FontWeight.w800,
                    letterSpacing: -0.5,
                  ),
                  Body(
                    text:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus malesuada ligula at lectus...',
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.5,
                  ),
                  Headline1(
                    text: '£70',
                    fontWeight: FontWeight.w800,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
