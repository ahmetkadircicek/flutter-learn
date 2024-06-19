import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ikea_clone/core/components/privacy_checkbox.dart';
import 'package:ikea_clone/core/components/text.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Body(
          text: 'Checkout',
          fontWeight: FontWeight.bold,
          letterSpacing: 0,
        ),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.question_mark_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              const Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Body(
                          text: 'Order summary',
                          fontWeight: FontWeight.w800,
                          letterSpacing: -0.5,
                        ),
                        Body(
                          text: '1 Item',
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.keyboard_arrow_down_outlined, size: 30),
                ],
              ),
              const SizedBox(height: 30),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Body(text: 'Subtotal excl. VAT'), Body(text: '£1,125')],
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Body(text: 'Delivery to IP332AH excl. VAT'), Body(text: '£33,33')],
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Body(text: 'Total cost excl. VAT'), Body(text: '£1,125,33')],
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Body(text: 'VAT'), Body(text: '£231,67')],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 30.0),
                child: Divider(
                  thickness: 3,
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Body(
                    text: 'Order summary',
                    fontWeight: FontWeight.w800,
                    letterSpacing: -0.5,
                  ),
                  Headline1(
                    text: '£70',
                    fontWeight: FontWeight.w800,
                  ),
                ],
              ),
              const SizedBox(height: 100),
              const ConsentCheckbox(
                type: false,
              ),
              const SizedBox(height: 30),
              const ConsentCheckbox(
                type: true,
              ),
              const SizedBox(height: 40),
              SizedBox(
                height: 70,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.onSurface.withOpacity(0.1),
                    elevation: 0,
                    surfaceTintColor: Colors.transparent,
                  ),
                  onPressed: null,
                  child: const Body(
                    text: 'Go to payment',
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
