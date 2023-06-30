import 'package:flutter/material.dart';
import '../util/donut_tile.dart';

class DonutTab extends StatelessWidget {
  //lists of donuts
  List donutOnSale = [
    //[donutFlavour, donutPrice, donutcolor, imageName]
    ["Ice Cream", "36", Colors.blue, "assets/icecream_donut.png"],
    ["Strawberry", "40", Colors.pink, "assets/strawberry_donut.png"],
    ["Grape ape", "55", Colors.purple, "assets/grape_donut.png"],
    ["Choco", "78", Colors.brown, "assets/chocolate_donut.png"]
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
