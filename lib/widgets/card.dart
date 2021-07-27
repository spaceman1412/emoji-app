import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  image: AssetImage('assets/images/burger.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Text(
              'Hamburg',
              style: TextStyle(color: Colors.orange, fontSize: 20),
            ),
            Text(
              '\$21',
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
      ),
      width: 150,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.orange.withOpacity(0.2),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
