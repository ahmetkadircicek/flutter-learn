import 'package:flutter/material.dart';
import '../../../components/text.dart';
import '../../../constants/locale_keys.dart';

class SelectCountryView extends StatelessWidget {
  const SelectCountryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BlackTint(
            child: AssetBackgroundImage(
              path: "assets/images/image_splash.jpg",
            ),
          ),
          Column(
            children: [
              const Spacer(flex: 4),
              Expanded(
                flex: 7,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Headline(text: LocaleKeys.countrySelecHeadline),
                            const SizedBox(height: 10),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.8,
                              child: const Subtitle(text: LocaleKeys.countrySelectSubtitle),
                            )
                          ],
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Subtitle(text: LocaleKeys.countrySelectRegion),
                            SizedBox(
                              width: double.infinity,
                              child: CountryDropdownMenu(),
                            ),
                          ],
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Subtitle(text: LocaleKeys.countrySelectLanguage),
                            Body(text: LocaleKeys.countrySelectEnglish, fontWeight: FontWeight.w500),
                          ],
                        ),
                        const SizedBox(height: 10)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.18,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Continue',
                            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                  color: Theme.of(context).colorScheme.onSecondary,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          Icon(
                            Icons.arrow_circle_right_sharp,
                            color: Theme.of(context).colorScheme.onSecondary,
                            size: 50,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AssetBackgroundImage extends StatelessWidget {
  final String path;
  const AssetBackgroundImage({
    super.key,
    required this.path,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path,
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    );
  }
}

class BlackTint extends StatelessWidget {
  final Widget child;
  const BlackTint({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ColorFiltered(
      colorFilter: ColorFilter.mode(
        Colors.black.withOpacity(0.2),
        BlendMode.darken,
      ),
      child: child,
    );
  }
}

class CountryDropdownMenu extends StatefulWidget {
  const CountryDropdownMenu({super.key});

  @override
  _CountryDropdownMenuState createState() => _CountryDropdownMenuState();
}

class _CountryDropdownMenuState extends State<CountryDropdownMenu> {
  String _selectedCountry = 'United Kingdom';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      padding: EdgeInsets.zero,
      isDense: true,
      isExpanded: true,
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            fontWeight: FontWeight.w500,
          ),
      value: _selectedCountry,
      onChanged: (String? newValue) {
        setState(() {
          _selectedCountry = newValue ?? '';
        });
      },
      icon: const Icon(Icons.keyboard_arrow_down_outlined),
      items: const [
        DropdownMenuItem(
          value: 'United States',
          child: Text('United States'),
        ),
        DropdownMenuItem(
          value: 'United Kingdom',
          child: Text('United Kingdom'),
        ),
        DropdownMenuItem(
          value: 'Sweden',
          child: Text('Sweden'),
        ),
      ],
    );
  }
}
