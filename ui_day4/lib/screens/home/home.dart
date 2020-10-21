import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_day4/constants.dart';
import 'package:ui_day4/screens/home/components/body.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.all(18.0),
        icon: SvgPicture.asset(
          'assets/icons/ic_back.svg',
          color: kTextColor,
        ),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          padding: EdgeInsets.all(18.0),
          color: kTextColor,
          icon: SvgPicture.asset(
            'assets/icons/ic_search.svg',
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        IconButton(
          padding: EdgeInsets.all(18.0),
          color: kTextColor,
          icon: SvgPicture.asset(
            'assets/icons/ic_shopping_bag.svg',
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        SizedBox(
          width: 4.0,
        ),
      ],
    );
  }
}
