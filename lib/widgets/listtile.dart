import 'package:flutter/material.dart';

class CustomListtile extends StatelessWidget {
  final imagePath;
  final nameItem;
  final int starCount;
  final finalPrice;
  final firstPrice;
  final double paddingLength;

  CustomListtile(this.imagePath, this.nameItem, this.starCount, this.finalPrice,
      this.firstPrice, this.paddingLength);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 20),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                color: Colors.pink.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 10,
                    spreadRadius: 0.5,
                    offset: Offset(0, 0),
                  )
                ]),
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$nameItem',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Row(
                  children: List<Widget>.generate(
                    starCount,
                    (index) => Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '\$$finalPrice',
                      style: TextStyle(color: Colors.red, fontSize: 17),
                    ),
                    Text('   '),
                    Text(
                      '\$$firstPrice',
                      style: TextStyle(
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                          fontSize: 15),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: paddingLength),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/second');
              },
              child: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.red.withOpacity(0.4),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 12,
                        offset: Offset(0, 10),
                        spreadRadius: 0.5,
                        color: Colors.red.withOpacity(0.2),
                      )
                    ],
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.add,
                    size: 30,
                    color: Colors.white,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
