import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khuloset_beta/src/components/image_data.dart';
import 'package:khuloset_beta/src/controller/bottom_nav_controller.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[_appBar(), _body1(), _body2()],
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
            alignment: Alignment.bottomLeft,
            child: ImageData(
              path: IconsPath.logo,
              width: 270,
            ),
          ),
        ),
        centerTitle: true,
      ),
      actions: [
        //옵션버튼
        GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ImageData(
              path: IconsPath.menuIcon,
            ),
          ),
        )
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
                  child: Text(
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
                  child: Text(
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
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black, // 테두리 색상
              width: 10.0, // 테두리 두께
            ),
          ),
          height: 400,
        ),
      ]),
    );
  }

  Widget _body2() {
    return SliverList.builder(
        itemCount: 29,
        itemBuilder: (context, index) => Container(
              height: 100,
              color:
                  Colors.primaries[Random().nextInt(Colors.primaries.length)],
            ));
  }
}
