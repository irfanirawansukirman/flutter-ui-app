import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_day4/constants.dart';
import 'package:ui_day4/models/Product.dart';

class AddToCart extends StatelessWidget {
  final Product product;

  const AddToCart({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: kDefaultPadding),
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(
                color: product.color,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: IconButton(
                icon: SvgPicture.asset(
                  'assets/icons/ic_cart.svg',
                  color: product.color,
                ),
                onPressed: () {},
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 48,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                color: product.color,
                onPressed: () {},
                child: Text(
                  'Buy Now'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}