import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ikea_clone/core/components/text.dart';

import '../../constants/locale_keys.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Headline1(text: LocaleKeys.searchViewSearch, fontWeight: FontWeight.bold),
                const SizedBox(height: 30.0),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    hintText: LocaleKeys.searchViewWhatAreYouLookingFor,
                    prefixIcon: const Icon(Icons.search, size: 24),
                    contentPadding: const EdgeInsets.all(16.0),
                  ),
                ),
                const SizedBox(height: 60.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Headline2(text: LocaleKeys.searchViewBrowseProducts),
                    Subtitle1(
                      text: LocaleKeys.searchViewViewAll,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).colorScheme.onSurface.withOpacity(0.6),
                    ),
                  ],
                ),
                const SizedBox(height: 30.0),
                const SearchGridView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SearchGridView extends StatelessWidget {
  const SearchGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
      ),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return const SearchGridItem();
      },
    );
  }
}

class SearchGridItem extends StatelessWidget {
  const SearchGridItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.onSurface.withOpacity(0.05),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 9,
              child: Center(
                child: Image.asset(
                  "assets/images/icon_ikea_logo.png",
                ),
              ),
            ),
            const Expanded(
              flex: 1,
              child: Subtitle2(
                text: 'Storage & organisation',
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
