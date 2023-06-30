import 'package:flutter/material.dart';

class donutTile extends StatelessWidget {
  //
  final String donutFlavour;
  final String donutPrice;
  final donutColor;
  final String imageName;

  const donutTile(
      {super.key,
      required this.donutColor,
      required this.donutFlavour,
      required this.donutPrice,
      required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
            color: donutColor[50], borderRadius: BorderRadius.circular(12)),

        //
        child: Column(children: [
          //price
          Row(
            mainAxisAlignment:
                MainAxisAlignment.end, // to make donut price at end of tile
            children: [
              Container(
                  decoration: BoxDecoration(
                      color: donutColor[100],
                      borderRadius: BorderRadius.circular(12)),
                  padding: EdgeInsets.all(12),
                  child: Text(
                    "\$$donutPrice",
                    style: TextStyle(
                        color: donutColor[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )),
            ],
          ),

          //picture
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            child: Image.asset(imageName),
          ),

          //flavour
          Text(
            donutFlavour,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 4,
          ),

          const SizedBox(
            height: 4,
          ),

          //loveIcon+ add button
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //love icon
                Icon(
                  Icons.favorite,
                  color: Colors.pink[400],
                ),
                Icon(
                  Icons.add,
                  color: Colors.grey[600],
                ),

                //plus button
              ],
            ),
          )
        ]),
      ),
    );
  }
}
