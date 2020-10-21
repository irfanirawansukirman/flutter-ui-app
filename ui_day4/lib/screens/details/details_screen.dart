import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_day4/constants.dart';
import 'package:ui_day4/models/Product.dart';
import 'package:ui_day4/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(
        product: product,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.all(18.0),
        icon: SvgPicture.asset(
          'assets/icons/ic_back.svg',
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          padding: EdgeInsets.all(18.0),
          color: kTextColor,
          icon: SvgPicture.asset(
            'assets/icons/ic_search.svg',
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        IconButton(
          padding: EdgeInsets.all(18.0),
          color: kTextColor,
          icon: SvgPicture.asset(
            'assets/icons/ic_shopping_bag.svg',
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        SizedBox(
          width: 4.0,
        ),
      ],
    );
  }
}
