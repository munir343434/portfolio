import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:velocity_x/velocity_x.dart';

class MiddleScreen extends StatelessWidget {
  const MiddleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Vx.purple700,
      child: Flex(
        direction: context.isMobile ? Axis.vertical : Axis.horizontal,
        children: [
          "All Creative Works\n".richText.xl4.white.make(),
          20.widthBox,
          Expanded(
              child: VxSwiper(
            items: const [
              ProjetWidget(title: 'Currency converter'),
              ProjetWidget(title: 'Dictionary App'),
              ProjetWidget(title: 'Ecommerce store'),
              ProjetWidget(title: 'Phone  Auth'),
            ],
            height: 170,
            enlargeCenterPage: true,
            viewportFraction: context.isMobile ? 0.75 : 0.4,
            autoPlay: true,
            autoPlayAnimationDuration: 1.seconds,
          ))
        ],
      ).p64().h(context.isMobile ? 400 : 300),
    );
  }
}

class ProjetWidget extends StatelessWidget {
  final String title;
  const ProjetWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return title.text.bold.white.xl.wide.center
        .make()
        .box
        .p8
        .roundedLg
        .alignCenter
        .square(200)
        .neumorphic(color: Vx.purple700, elevation: 5.0, curve: VxCurve.flat)
        .make()
        .px16();
  }
}
