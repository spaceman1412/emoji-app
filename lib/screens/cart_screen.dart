import 'package:emoji_app/providers/counter_provider.dart';
import 'package:emoji_app/widgets/listcart.dart';
import 'package:emoji_app/widgets/listtile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          Title(),
          dash_board(),
          add_cart(),
          Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 30),
            child: Text(
              'FEATURED',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ListCart('assets/images/cheese.png',
                      Colors.purple.withOpacity(0.3), 'Sweet Cheese', '11'),
                  ListCart('assets/images/taco.png',
                      Colors.blue.withOpacity(0.3), 'Taco', '6'),
                  ListCart('assets/images/pizza.png',
                      Colors.purple.withOpacity(0.3), 'Pizza', '11'),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ListCart('assets/images/popcorn.png',
                      Colors.orange.withOpacity(0.3), 'Nice popcorn ', '6'),
                  ListCart('assets/images/sandwich.png',
                      Colors.green.withOpacity(0.3), 'Sandwich', '6'),
                  ListCart('assets/images/cheese.png',
                      Colors.purple.withOpacity(0.3), 'Sweet Cheese', '11'),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}

class add_cart extends StatelessWidget {
  const add_cart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            '\$42',
            style:
                TextStyle(fontSize: 30, color: Colors.black.withOpacity(0.7)),
          ),
        ),
        Container(
          width: 250,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10), topLeft: Radius.circular(10)),
            color: Colors.red.withOpacity(0.5),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, top: 4),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () => context.read<Counter>().decrement(),
                          child: Icon(
                            Icons.remove,
                            size: 20,
                            color: Colors.red.withOpacity(0.8),
                          ),
                        ),
                        Text(
                          ' ${context.watch<Counter>().count} ',
                          style: TextStyle(
                              color: Colors.red.withOpacity(0.8), fontSize: 23),
                        ),
                        GestureDetector(
                          onTap: () => context.read<Counter>().increment(),
                          child: Icon(
                            Icons.add,
                            size: 20,
                            color: Colors.red.withOpacity(0.8),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Add to cart',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class dash_board extends StatelessWidget {
  const dash_board({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(
            image: AssetImage('assets/images/burger.png'),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius: 6.0,
                        spreadRadius: 4.0,
                        offset: Offset(0.0, 3.0),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.red.withOpacity(0.5),
                    size: 35,
                  ),
                ),
              ),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 6.0,
                      spreadRadius: 4.0,
                      offset: Offset(0.0, 3.0),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.restore,
                  color: Colors.red.withOpacity(0.5),
                  size: 35,
                ),
              ),
            ],
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
      padding: const EdgeInsets.all(30.0),
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
                color: Color(0xFFFF7E68),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 6.0,
                    spreadRadius: 4.0,
                    offset: Offset(0.0, 3.0),
                  )
                ]),
            child: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          ),
        ],
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
      padding: const EdgeInsets.only(left: 30),
      child: Column(
        children: [
          Align(
            child: Text(
              'SUPER',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            alignment: Alignment.topLeft,
          ),
          Align(
            child: Text(
              'BEEF BURGER',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            alignment: Alignment.topLeft,
          ),
        ],
      ),
    );
  }
}
