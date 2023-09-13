import 'dart:math';
import 'package:flutter/material.dart';
import 'package:khuloset_beta/src/components/image_data.dart';
import 'package:khuloset_beta/src/components/item.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
            _items()
          ],
        ),
      ),
    );
  }

  Widget _appBar() {
    return SliverAppBar(
      //pinned: true,
      floating: true,
      elevation: 200,
      flexibleSpace: FlexibleSpaceBar(
        title: GestureDetector(
          onTap: () {},
          child: Align(
            widthFactor: 4.2,
            alignment: Alignment.centerLeft,
            child: ImageData(
              path: IconsPath.logo,
              width: 270,
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
                  margin: EdgeInsets.only(left: 40),
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
                  margin: EdgeInsets.only(left: 40),
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
      itemBuilder: (context, index) => Column(children: [
        SafeArea(
          bottom: false,
          child: Container(
            height: 330,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  right: 0,
                  top: 0,
                  bottom: 0,
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: const ShapeDecoration(
                      gradient: RadialGradient(
                        center: Alignment(0.05, 0.05),
                        radius: 0.8,
                        colors: [
                          Color(0xFFCF921C),
                          Color(0x00E2AC43),
                          Color(0x00E2AC43)
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
                        image:
                            NetworkImage("https://via.placeholder.com/181x330"),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
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
              padding: EdgeInsets.only(top: 10, bottom: 10),
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
                  margin: EdgeInsets.only(left: 40),
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
                  margin: EdgeInsets.only(left: 40),
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

  Widget _items() {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.80,
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          // 각 아이템을 나타내는 위젯을 반환
          return Card(
            child: Column(
              children: [
                Image.network(
                  'https://via.placeholder.com/157x218', // 이미지 URL
                  width: double.infinity,
                  height: 218,
                  fit: BoxFit.fitHeight,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '아이템 $index',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          );
        },
        childCount: 10, // 아이템 개수 설정
      ),
    );
  }
}
