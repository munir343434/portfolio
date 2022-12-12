import 'package:flutter/cupertino.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:my/colors.dart';
import 'package:my/header.dart';
import 'package:velocity_x/velocity_x.dart';

class FooterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        VxDevice(
            mobile: VStack([
              "Got a project?\n Let's talk.".text.center.white.xl2.make(),
              10.heightBox,
              "munir462091@gmail.com"
                  .text
                  .color(Coolors.accentColor)
                  .semiBold
                  .make()
                  .box
                  .border(color: Coolors.accentColor)
                  .p16
                  .rounded
                  .make()
            ]),
            web: HStack(
              [
                "Got a project?\nLet's talk.".text.center.white.xl2.make(),
                10.heightBox,
                "munir462091@gmail.com"
                    .text
                    .color(Coolors.accentColor)
                    .semiBold
                    .make()
                    .box
                    .border(color: Coolors.accentColor)
                    .p16
                    .rounded
                    .make()
              ],
              alignment: MainAxisAlignment.spaceAround,
            ).w(context.safePercentWidth * 70).scale150().p16()),
        50.heightBox,
        CustomAppBar(),
        10.heightBox,
        "Thanks for scrooling,".richText.semiBold.white.withTextSpanChildren(
            ["that's all folks.".textSpan.gray500.make()]).make(),
        10.heightBox,
        [
          "Made in Pakistan with".text.red500.make(),
          10.widthBox,
          Icon(
            AntDesign.heart,
            color: Vx.red500,
            size: 14,
          )
        ].hStack(crossAlignment: CrossAxisAlignment.center)
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).wFull(context).p16();
  }
}
