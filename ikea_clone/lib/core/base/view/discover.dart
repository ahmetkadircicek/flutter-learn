import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ikea_clone/core/base/view/category_view.dart';

class DiscoverView extends StatelessWidget {
  const DiscoverView({super.key});

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
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
            child: SizedBox(
              height: 45,
              child: CategoryListView(),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: DiscoveryMasonryGridView(),
            ),
          )
        ],
      ),
    );
  }
}

class DiscoveryMasonryGridView extends StatelessWidget {
  const DiscoveryMasonryGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      itemBuilder: (context, index) {
        return MasonryGridViewItem(
          index: index,
          extent: calculateLength(index, MediaQuery.of(context).size.width),
        );
      },
    );
  }
}

double calculateLength(int index, double mediaquery) {
  double width = (mediaquery - 50) / 2;
  if (index == 1) {
    return width;
  } else {
    return 1.5 * width;
  }
}

class MasonryGridViewItem extends StatelessWidget {
  const MasonryGridViewItem({
    super.key,
    required this.index,
    this.extent,
    this.backgroundColor,
    this.bottomSpace,
  });

  final int index;
  final double? extent;
  final double? bottomSpace;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final child = Container(
      decoration: BoxDecoration(
        color: backgroundColor ?? Theme.of(context).colorScheme.onSurface.withOpacity(0.05),
        borderRadius: BorderRadius.circular(16),
      ),
      height: extent,
      child: const Center(
        child: SizedBox.shrink(),
      ),
    );

    if (bottomSpace == null) {
      return child;
    }

    return Column(
      children: [
        Expanded(child: child),
        Container(
          height: bottomSpace,
          color: Colors.green,
        )
      ],
    );
  }
}
