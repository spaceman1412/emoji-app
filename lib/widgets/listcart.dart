import 'package:flutter/material.dart';

class ListCart extends StatelessWidget {
  final imagePath;
  final Color colorBox;
  final nameItem;
  final price;

  ListCart(this.imagePath, this.colorBox, this.nameItem, this.price);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 10, bottom: 10),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: colorBox,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Transform.scale(
              scale: 0.6,
              child: Image(
                image: AssetImage(imagePath),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$nameItem',
                  style: TextStyle(fontSize: 15),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    '\$$price',
                    style: TextStyle(
                        color: Colors.red.withOpacity(0.8), fontSize: 17),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
