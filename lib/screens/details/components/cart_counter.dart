import 'package:flutter/material.dart';

import 'package:fluttershop_demo/constants.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildOutlinedButton(
          press: () {
            if (numOfItems > 1) {
              setState(() {
                numOfItems--;
              });
            };
          }, 
          icon: Icons.remove,
        ),
       Padding(padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
       child: Text(
        //if our item is less than 10 it show 01 02 like that
        numOfItems.toString().padLeft(2, "0"),
        style: Theme.of(context).textTheme.headline6,
       ),
       ),
       buildOutlinedButton(
        press: () {
          setState(() {
            numOfItems++;
          });
        }, 
        icon: Icons.add,
        ),
      ],
    );
  }

  SizedBox buildOutlinedButton({IconData? icon, Function? press}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
          ),
        ),
        onPressed: press! (),
        child: Icon(icon),
      ),
    );
  }
}