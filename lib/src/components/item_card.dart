import 'package:flutter/material.dart';
import 'package:khuloset_beta/src/components/product.dart';

class ItemCard extends StatelessWidget {
  final Product? product;
  final Function()? press;
  const ItemCard({this.product, this.press});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Column(
        children: [
          Image.network(
            'https://via.placeholder.com/157x218', // 이미지 URL
            width: 180,
            fit: BoxFit.fitWidth,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              'USER NAME / / /',
              style: TextStyle(fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
