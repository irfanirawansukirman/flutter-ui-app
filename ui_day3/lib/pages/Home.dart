import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ui_day3/animations/FadeAnimation.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        brightness: Brightness.light,
        leading: Icon(null),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.grey[800],
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeAnimation(
                    1.0,
                    Text(
                      'Food delivery',
                      style: TextStyle(
                          color: Colors.grey[80],
                          fontWeight: FontWeight.bold,
                          fontSize: 28),
                    ),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Container(
                    height: 48,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        FadeAnimation(
                          1.0,
                          makeCategory(
                            isActive: true,
                            title: 'Pizza',
                          ),
                        ),
                        FadeAnimation(
                          1.2,
                          makeCategory(
                            isActive: false,
                            title: 'Burger',
                          ),
                        ),
                        FadeAnimation(
                          1.4,
                          makeCategory(
                            isActive: false,
                            title: 'Kebab',
                          ),
                        ),
                        FadeAnimation(
                          1.6,
                          makeCategory(
                            isActive: false,
                            title: 'Donut',
                          ),
                        ),
                        FadeAnimation(
                          1.8,
                          makeCategory(
                            isActive: false,
                            title: 'Desert',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                ],
              ),
            ),
            FadeAnimation(
              1.0,
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Free delivery',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    FadeAnimation(
                      1.25,
                      makeItem(image: 'assets/images/img1.jpg'),
                    ),
                    FadeAnimation(
                      1.5,
                      makeItem(image: 'assets/images/img2.jpg'),
                    ),
                    FadeAnimation(
                      1.75,
                      makeItem(image: 'assets/images/img3.jpg'),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }

  Widget makeItem({image}) {
    return AspectRatio(
      aspectRatio: 1 / 1.5,
      child: GestureDetector(
        child: Container(
          margin: EdgeInsets.only(right: 20.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.0),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.0),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                stops: [
                  .2,
                  .9,
                ],
                colors: [
                  Colors.black.withOpacity(.9),
                  Colors.black.withOpacity(.2),
                ],
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "\$ 15.00",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        'Vegetarian Pizza',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget makeCategory({isActive, title}) {
    return AspectRatio(
      aspectRatio: isActive ? 3 : 2.5 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 8.0),
        decoration: BoxDecoration(
            color: isActive ? Colors.yellow[700] : Colors.white,
            borderRadius: BorderRadius.circular(50.0)),
        child: Align(
          child: Text(
            title,
            style: TextStyle(
                color: isActive ? Colors.white : Colors.grey[500],
                fontSize: 18,
                fontWeight: isActive ? FontWeight.bold : FontWeight.w100),
          ),
        ),
      ),
    );
  }
}
