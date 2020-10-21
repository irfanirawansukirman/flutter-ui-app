import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ui_day3/animations/FadeAnimation.dart';
import 'package:ui_day3/pages/Home.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen>
    with TickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _animation;

  bool _textVisible = true;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 100),
    );

    _animation = Tween(
      begin: 1.0,
      end: 25.0,
    ).animate(_animationController);

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();

    super.dispose();
  }

  void _onTap() {
    setState(() {
      _textVisible = false;
    });

    _animationController.forward().then(
          (f) => Navigator.push(
            context,
            PageTransition(
              type: PageTransitionType.fade,
              child: Home(),
            ),
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/img0.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.6),
                Colors.black.withOpacity(.2)
              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FadeAnimation(
                  1.0,
                  Text(
                    'Taking Order For Delivery',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                FadeAnimation(
                  1.25,
                  Text(
                    'See restaurant nearby by\nadding location',
                    style: TextStyle(
                      color: Colors.white,
                      height: 1.4,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(
                  height: 96,
                ),
                FadeAnimation(
                  1.5,
                  ScaleTransition(
                    scale: _animation,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.0),
                        gradient: LinearGradient(
                          colors: [
                            Colors.yellow,
                            Colors.orange,
                          ],
                        ),
                      ),
                      child: AnimatedOpacity(
                        opacity: _textVisible ? 1.0 : 0.0,
                        duration: Duration(milliseconds: 50),
                        child: MaterialButton(
                          minWidth: double.infinity,
                          onPressed: () => _onTap(),
                          child: Text(
                            'Start',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                FadeAnimation(
                  1.75,
                  AnimatedOpacity(
                    opacity: _textVisible ? 1.0 : 0.0,
                    duration: Duration(milliseconds: 50),
                    child: Align(
                      child: Text(
                        'Now deliver to your door 24/7',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
