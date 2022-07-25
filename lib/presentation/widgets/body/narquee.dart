import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class MyMarquee extends StatefulWidget {
  const MyMarquee({Key? key}) : super(key: key);

  @override
  State<MyMarquee> createState() => _MyMarqueeState();
}

class _MyMarqueeState extends State<MyMarquee> {
  final bool _useRtlText = false;
  @override
  Widget build(BuildContext context) {
    return Marquee(
      style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      key: Key("$_useRtlText"),
      text: !_useRtlText
          ? 'АВТОМОБІЛІ З ПДВ ! - Запрошуємо до нового розділу на нашому сайті - АВТОМОБІЛІ З ПДВ !'
          : 'פעם היה ילד אשר סיפר סיפור על ילד:"',
      velocity: 50.0,
    );
  }
}
