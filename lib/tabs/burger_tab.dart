import 'package:flutter/material.dart';
import '../util/donut_tile.dart';

class BurgerTab extends StatelessWidget {
  //lists of donuts
  List donutOnSale = [
    //[donutFlavour, donutPrice, donutcolor, imageName]
    ["Chicken", "36", Colors.blue, "assets/burger1.png"],
    ["BBQ", "40", Colors.pink, "assets/burger2.png"],
    ["Double Cheese ape", "55", Colors.purple, "assets/burger3.png"],
    ["Tikka", "78", Colors.brown, "assets/burger4.png"]
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutOnSale.length,
      padding: EdgeInsets.all(12),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1 / 1.5),
      itemBuilder: (context, index) {
        return donutTile(
          //
          donutFlavour: donutOnSale[index][0],
          donutPrice: donutOnSale[index][1],
          donutColor: donutOnSale[index][2],
          imageName: donutOnSale[index][3],
        );
      },
    );
  }
}
