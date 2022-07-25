import 'package:flutter/material.dart';
import 'package:trade_in_motors/core/constants/constants.dart';
import 'package:trade_in_motors/data/models/cars_model.dart';
import 'package:trade_in_motors/presentation/widgets/body/carousel.dart';
import 'package:trade_in_motors/presentation/widgets/body/links.dart';
import 'package:trade_in_motors/presentation/widgets/body/narquee.dart';
import 'package:trade_in_motors/presentation/widgets/car_card/car.dart';

class MyListView extends StatefulWidget {
  const MyListView({Key? key}) : super(key: key);

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  final bool _useRtlText = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
              height: 30,
              color: const Color(0xffc33305),
              child: const MyMarquee()),
        ),
        const Carousel(),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              header,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        const Links(),
        AllCar(citroen[0], context),
      ],
    );
  }
}
