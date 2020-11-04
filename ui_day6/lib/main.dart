import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ui_day6/dashboard.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  PageController _pageController;

  AnimationController _rippleController;
  AnimationController _scaleController;

  Animation<double> _rippleAnimation;
  Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _pageController = PageController(initialPage: 0);

    _rippleController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));

    _scaleController =
        AnimationController(vsync: this, duration: Duration(seconds: 1))
          ..addStatusListener(
            (status) {
              if (status == AnimationStatus.completed) {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade, child: Dashboard()));
              }
            },
          );

    _rippleAnimation =
        Tween<double>(begin: 80.0, end: 90.0).animate(_rippleController)
          ..addStatusListener(
            (status) {
              if (status == AnimationStatus.completed) {
                _rippleController.reverse();
              } else if (status == AnimationStatus.dismissed) {
                _rippleController.forward();
              }
            },
          );

    _scaleAnimation =
        Tween<double>(begin: 1.0, end: 30.0).animate(_scaleController);

    _rippleController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          makePage(image: 'assets/images/natural1.jpg'),
          makePage(image: 'assets/images/natural2.jpg'),
          makePage(image: 'assets/images/natural3.jpg')
        ],
      ),
    );
  }

  Widget makePage({image}) {
    return Container(
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.black.withOpacity(.3),
            Colors.black.withOpacity(.3),
          ])),
          child: Padding(
            padding: EdgeInsets.all(40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 60,
                ),
                Text(
                  'Exerciese 1',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "15",
                      style: TextStyle(
                          color: Colors.yellow[400],
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Minutes",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "3",
                      style: TextStyle(
                          color: Colors.yellow[400],
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Exercises",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ],
                ),
                SizedBox(
                  height: 180,
                ),
                Align(
                  child: Text(
                    "Start the morning with your health",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w100),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: AnimatedBuilder(
                    animation: _rippleAnimation,
                    builder: (context, child) => Container(
                      width: _rippleAnimation.value,
                      height: _rippleAnimation.value,
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue.withOpacity(.4)),
                        child: InkWell(
                          onTap: () {
                            _scaleController.forward();
                          },
                          child: AnimatedBuilder(
                            animation: _scaleAnimation,
                            builder: (context, child) => Transform.scale(
                              scale: _scaleAnimation.value,
                              child: Container(
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle, color: Colors.blue),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
