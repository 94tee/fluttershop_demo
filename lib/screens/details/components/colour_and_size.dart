import 'package:flutter/material.dart';
import 'package:fluttershop_demo/models/Product.dart';

import 'package:fluttershop_demo/constants.dart';

class ColourAndSize extends StatelessWidget {
  const ColourAndSize({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text("Colour"),
              Row(
                children: const <Widget>[
                  ColourDot(
                    color: Color(0xFF356C95),
                    isSelected: true,
                  ),
                  ColourDot(color: Color(0xFFF8C078)),
                  ColourDot(color: Color(0xFFA29B9B)),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: const TextStyle(color: kTextColor),
              children: [
                const TextSpan(text: "Size\n"),
                TextSpan(
                  text: "${product.size} cm",
                  style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ColourDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColourDot({Key? key, required this.color, this.isSelected = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.only(
        top: kDefaultPaddin / 4,
        left: kDefaultPaddin / 2,
      ),
      padding:const EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected? color: Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}