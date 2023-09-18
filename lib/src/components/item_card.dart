import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:khuloset_beta/src/components/product.dart';

class ItemCard extends StatelessWidget {
  final Product? product;
  final Function()? press;
  const ItemCard({this.product, this.press});

  Future<String?> getImageUrl() async {
    await Firebase.initializeApp();
    final Reference storageReference = FirebaseStorage.instance.ref().child('gs://khuloset-beta-123.appspot.com/images/2.jpg');
    try {
      final imageUrl = await storageReference.getDownloadURL();
      return imageUrl;
    } catch (e) {
      print('Error fetching image URL: $e');
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Column(
        children: [
          FutureBuilder<String?>(
            future: getImageUrl(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator(); // 이미지 로딩 중에는 로딩 표시
              }
              if (snapshot.hasError) {
                print(snapshot.error);
                return Text('Error loading image'); // 이미지 로딩 중 오류 발생
              }
              final imageUrl = snapshot.data;
              if (imageUrl != null) {
                return Image.network(
                  imageUrl,
                  width: 180,
                  height: 218,
                  fit: BoxFit.fitWidth,
                );
              } else {
                return Text('Image not found'); // 이미지가 없을 때
              }
            },
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