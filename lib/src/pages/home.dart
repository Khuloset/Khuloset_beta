import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:khuloset_beta/src/components/image_data.dart';
import 'package:khuloset_beta/src/components/item_card.dart';
import 'package:khuloset_beta/src/components/product.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  Future<String?> getImageUrl() async {
    await Firebase.initializeApp();
    final Reference storageReference = FirebaseStorage.instance.ref().child('gs://khuloset-beta-123.appspot.com/images/1.jpg');
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
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            _appBar(),
            _body1(),
            _body2(),
            _body3(),
            _body4(),
            _items(),
          ],
        ),
      ),
    );
  }

  Widget _appBar() {
    return SliverAppBar(
      //backgroundColor: Colors.white,
      //pinned: true,
      floating: true,
      elevation: 200,
      flexibleSpace: FlexibleSpaceBar(
        title: GestureDetector(
          onTap: () {},
          child: Align(
            heightFactor: 0.5,
            widthFactor: 2.5,
            alignment: Alignment.centerLeft,
            child: ImageData(
              path: IconsPath.logo,
              width: 500,
            ),
          ),
        ),
        centerTitle: true,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Padding(
            padding: const EdgeInsets.all(1.0),
            child: ImageData(
              path: IconsPath.menuIcon,
            ),
          ),
        ),
      ],
    );
  }

  Widget _body1() {
    return SliverList.builder(
      itemCount: 1,
      itemBuilder: (context, index) => Column(children: [
        Container(
          height: 80,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: const Text(
                    'WHAT’S NEW?',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Color(0xFF454545),
                      fontSize: 16,
                      fontFamily: 'AppleSDGothicNeoB00',
                      fontWeight: FontWeight.w400,
                      height: 1,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: const Text(
                    '신규 등록 상품',
                    style: TextStyle(
                      color: Color(0xFF838383),
                      fontSize: 12,
                      fontFamily: 'AppleSDGothicNeoR00',
                      fontWeight: FontWeight.w400,
                      height: 1.33,
                    ),
                  ),
                ),
              ]),
        ),
      ]),
    );
  }

  Widget _body2() {
    return SliverList.builder(
      itemCount: 1,
      itemBuilder: (context, index) => Column(
        children: [
          SafeArea(
            bottom: false,
            child: FutureBuilder<String?>(
              future: getImageUrl(), // Firebase Storage에서 이미지 URL 가져오기
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                }
                if (snapshot.hasError) {
                  return Text('Error loading image');
                }
                final imageUrl = snapshot.data;
                if (imageUrl != null) {
                  return Container(
                    height: 330,
                    width: Get.width,
                    child: Stack(
                      children: [
                        Positioned(
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: const ShapeDecoration(
                              gradient: RadialGradient(
                                center: Alignment(0.02, 0.05),
                                radius: 0.9,
                                colors: [
                                  Color(0xFFCF921C),
                                  Color(0x00E2AC43),
                                  Color(0x00E2AC43),
                                ],
                              ),
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          right: 0,
                          top: 0,
                          bottom: 0,
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(imageUrl), // Firebase Storage에서 가져온 이미지 URL 사용
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                } else {
                  return Text('Image not found');
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _body3() {
    return SliverList.builder(
      itemCount: 1,
      itemBuilder: (context, index) => Column(
        children: [
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.only(top: 20, bottom: 10),
              child: Container(
                width: 258,
                height: 48,
                decoration: ShapeDecoration(
                  color: Color(0xFF1A1A1A),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                        top: 16,
                        left: 12,
                        right: 16,
                        bottom: 16,
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'TRY ON',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Balsamiq Sans',
                              fontWeight: FontWeight.w400,
                              height: 1.14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _body4() {
    return SliverList.builder(
      itemCount: 1,
      itemBuilder: (context, index) => Column(children: [
        Container(
          height: 80,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: const Text(
                    "TODAY's DRESSISM",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Color(0xFF454545),
                      fontSize: 16,
                      fontFamily: 'AppleSDGothicNeoB00',
                      fontWeight: FontWeight.w400,
                      height: 1,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: const Text(
                    '인기 상품',
                    style: TextStyle(
                      color: Color(0xFF838383),
                      fontSize: 12,
                      fontFamily: 'AppleSDGothicNeoR00',
                      fontWeight: FontWeight.w400,
                      height: 1.33,
                    ),
                  ),
                ),
              ]),
        ),
      ]),
    );
  }

  Widget _items() {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 2,
        childAspectRatio: 0.7,
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) =>
            ItemCard(product: products[index], press: () {}),
        childCount: 10, // 아이템 개수 설정
      ),
    );
  }
}
