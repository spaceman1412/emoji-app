import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final imagePath;
  final nameItem;
  final price;
  final Color colorCard;
  final Color colorText;
  CardItem(this.imagePath, this.nameItem, this.price, this.colorCard,
      this.colorText);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: <Widget>[
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 6.0,
                      spreadRadius: 4.0,
                      offset: Offset(0.0, 3.0),
                    )
                  ],
                ),
                child: Transform.scale(
                  scale: 0.7,
                  child: Image(
                    image: AssetImage(imagePath),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Text(
                '$nameItem',
                style: TextStyle(
                  color: colorText,
                  fontSize: 20,
                ),
              ),
              Text(
                '\$$price',
                style: TextStyle(color: colorText),
              ),
            ],
          ),
        ),
        width: 150,
        height: 200,
        decoration: BoxDecoration(
          color: colorCard,
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
