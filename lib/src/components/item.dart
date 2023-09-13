import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(
            'https://via.placeholder.com/150', // 이미지 URL
            width: double.infinity,
            height: 218,
            fit: BoxFit.fitHeight,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '아이템 index',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
