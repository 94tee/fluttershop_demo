import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttershop_demo/constants.dart';
import 'package:fluttershop_demo/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(),
      body: const Body(),
    );
  }

  // ignore: non_constant_identifier_names
  AppBar BuildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        onPressed: () {}, 
        icon: SvgPicture.asset("assets/icons/back.svg"),
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {}, 
          icon: SvgPicture.asset("assets/icons/search.svg",
          // By default our icon color is white 
          color: kTextColor,
          ),
        ),
        IconButton(
          onPressed: () {}, 
          icon: SvgPicture.asset("assets/icons/cart.svg", 
          // By default our icon color is white
          color: kTextColor,
          ),
        ),
        const SizedBox(width: kDefaultPaddin / 2),
      ],
    );
  }
}