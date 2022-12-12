import 'dart:math';
import 'package:my/colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class HeaderScreen extends StatelessWidget {
  const HeaderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var nameWidget = "MUNIR\nAhmed."
        .text
        .white
        .xl2
        .lineHeight(1)
        .size(context.isMobile ? 15 : 20)
        .bold
        .make()
        .shimmer();

    return SafeArea(
      child: VxBox(
              child: VStack([
        ZStack([
          PictureWidget(),
          Row(
            children: [
              VStack([
                if (context.isMobile) 50.heightBox else 10.heightBox,
                CustomAppBar().shimmer(primaryColor: Coolors.accentColor),
                30.heightBox,
                nameWidget,
                20.heightBox,
                VxBox()
                    .color(Coolors.accentColor)
                    .size(60, 10)
                    .make()
                    .shimmer(primaryColor: Coolors.accentColor),
                30.heightBox,
                SocialAccounts()
              ]).pSymmetric(h: context.percentWidth * 10, v: 32),
              Expanded(
                  child: VxResponsive(
                fallback: const Offstage(),
                medium: IntroductionWidget()
                    .pOnly(left: 120)
                    .h(context.percentHeight * 60),
                large: IntroductionWidget()
                    .pOnly(left: 120)
                    .h(context.percentHeight * 60),
              ))
            ],
          ).w(context.screenWidth)
        ]),
      ]))
          .size(context.screenWidth, context.percentHeight * 60)
          .color(Coolors.secondryColor)
          .make(),
    );
  }
}

class IntroductionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        [
          "-Introduction".text.gray500.widest.sm.make(),
          10.heightBox,
          "Flutter developer, firebas, dart, MySql, Rest Api"
              .text
              .white
              .xl3
              .maxLines(5)
              .make()
              .w(context.isMobile
                  ? context.screenWidth
                  : context.percentWidth * 40),
          20.heightBox,
        ].vStack(),
      ],
      alignment: MainAxisAlignment.spaceEvenly,
    );
  }
}

class PictureWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.rotationY(pi),
      child: Image.asset(
        "assets/portfolio.png",
        fit: BoxFit.cover,
        height: context.percentHeight * 60,
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Icon(
      AntDesign.codesquare,
      size: 50,
      color: Coolors.accentColor,
    );
  }
}

class SocialAccounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return [
     const Icon(AntDesign.twitter, color: Colors.white).mdClick(() {
        launch(
            "https://twitter.com/MunirAh27264442?t=FP3LXGVXmYj2fo4eWWBXnQ&s=08");
      }).make(),
      20.widthBox,
     const Icon(AntDesign.github, color: Colors.white).mdClick(() {
        launch("https://github.com/munir343434");
      }).make(),
      20.widthBox,
     const  Icon(AntDesign.linkedin_square, color: Colors.white).mdClick(() {
        launch("https://www.linkedin.com/in/flutter-developer-expert");
      }).make(),
    ].hStack();
  }
}
