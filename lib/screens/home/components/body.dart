import 'package:flutter/material.dart';
import 'package:fluttershop_demo/constants.dart';
import 'package:fluttershop_demo/models/Product.dart';
import 'package:fluttershop_demo/screens/details/details_screen.dart';

import 'categories.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "Women",
            style: Theme.of(context)
            .textTheme
            .headline5!
            .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                 mainAxisSpacing: kDefaultPaddin,
                 crossAxisSpacing: kDefaultPaddin,
                 childAspectRatio: 0.75,
              ), 
              itemBuilder: (context, index) => ItemCard(
                product: products[index], 
                press: () => Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(product: products[index],)
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}