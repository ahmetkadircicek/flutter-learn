import 'package:flutter/material.dart';
import 'package:ikea_clone/core/components/text.dart';
import 'package:ikea_clone/core/constants/locale_keys.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/category_image.jpg',
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.26,
                  fit: BoxFit.cover,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 50.0),
                  child: BackButton(),
                )
              ],
            ),
            const SizedBox(
              height: 90,
              child: Center(
                child: Headline1(text: LocaleKeys.categoryViewStorageAndOrganization, fontWeight: FontWeight.w800),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.15,
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.05),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Row(
                            children: [
                              Icon(Icons.warehouse_outlined),
                              SizedBox(width: 10),
                              Icon(Icons.fire_truck_outlined),
                              SizedBox(width: 10),
                              Body(
                                text: LocaleKeys.categoryViewShowAvailabilities,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0,
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Body(
                            text: LocaleKeys.categoryViewSelectStoreOrPostalCodeToSeeWhatsInStock,
                            color: Theme.of(context).colorScheme.onSurface.withOpacity(0.8),
                            letterSpacing: 0,
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.onSurface,
                      ),
                      child: const Icon(Icons.settings),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 30.0),
              child: SizedBox(
                height: 45,
                child: CategoryListView(),
              ),
            ),
            const CategoryGridView(),
          ],
        ),
      ),
    );
  }
}

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              foregroundColor: Theme.of(context).colorScheme.onSurface,
              backgroundColor: Theme.of(context).colorScheme.onSurface.withOpacity(0.05),
              surfaceTintColor: Colors.transparent,
            ),
            onPressed: () {},
            child: const Body2(
              text: 'Category',
              fontWeight: FontWeight.bold,
              letterSpacing: 0,
            ),
          ),
        );
      },
    );
  }
}

class BackButton extends StatelessWidget {
  const BackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {},
      fillColor: Theme.of(context).colorScheme.surface,
      padding: const EdgeInsets.all(10.0),
      shape: const CircleBorder(),
      child: const Icon(Icons.arrow_back),
    );
  }
}

class CategoryGridView extends StatelessWidget {
  const CategoryGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 10,
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 0.8),
      itemBuilder: (BuildContext context, int index) {
        return const CategoryGridItem();
      },
    );
  }
}

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.onSurface.withOpacity(0.1),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Row(
              children: [
                const Spacer(),
                Icon(Icons.favorite_outline, color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6)),
              ],
            ),
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Placeholder(),
            ),
          ),
          const SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Body(text: 'ProductName', fontWeight: FontWeight.bold),
                  Body(text: 'ProductDescription'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
