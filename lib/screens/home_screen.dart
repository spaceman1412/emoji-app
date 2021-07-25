import 'package:flutter/material.dart';

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
              Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 10),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 300,
                    height: 150,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: 'Search',
                        prefixIcon: Icon(Icons.search),
                        filled: true,
                        fillColor: Colors.grey.withOpacity(0.2),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
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
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xFFC6E7FE),
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/images/tuxedo.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
