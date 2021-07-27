import 'package:flutter/material.dart';
import '../widgets/card.dart';
import '../widgets/listtile.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              Title(),
              SizedBox(height: 25.0),
              CustomTextBox(),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(
                  'Recommended',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CardItem('assets/images/burger.png', 'Burger', '21',
                        Colors.orange.withOpacity(0.25), Colors.orange),
                    CardItem('assets/images/fries.png', 'Fries', '21',
                        Colors.blue.withOpacity(0.25), Colors.blue),
                    CardItem('assets/images/doughnut.png', 'Donut', '21',
                        Colors.pink.withOpacity(0.25), Colors.pink),
                    CardItem('assets/images/cheese.png', 'Cheese', '21',
                        Colors.green.withOpacity(0.25), Colors.green),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0, left: 20),
                child: Text(
                  'FEATURED',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
              ),
              CustomListtile('assets/images/hotdog.png', 'Delicious hot dog', 4,
                  '6', '18', 80),
              CustomListtile('assets/images/pizza.png', 'Cheese pizza', 5, '12',
                  '18', 108),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextBox extends StatelessWidget {
  const CustomTextBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.0, right: 30.0),
      child: Container(
        padding: EdgeInsets.only(left: 5.0),
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.15),
            borderRadius: BorderRadius.circular(10.0)),
        child: TextField(
          decoration: InputDecoration(
              hintText: 'Search',
              hintStyle: TextStyle(fontSize: 14),
              border: InputBorder.none,
              fillColor: Colors.grey.withOpacity(0.5),
              prefixIcon: Icon(Icons.search, color: Colors.grey)),
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Column(
        children: [
          Align(
            child: Text(
              'SEARCH FOR',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            alignment: Alignment.topLeft,
          ),
          Align(
            child: Text(
              'RECIPES',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            alignment: Alignment.topLeft,
          ),
        ],
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(35.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.menu,
            color: Colors.black,
            size: 40,
          ),
          Container(
            width: 50,
            height: 45,
            decoration: BoxDecoration(
                color: Color(0xFFC6E7FE),
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/tuxedo.png'),
                  fit: BoxFit.contain,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 6.0,
                    spreadRadius: 4.0,
                    offset: Offset(0.0, 3.0),
                  )
                ]),
          ),
        ],
      ),
    );
  }
}
