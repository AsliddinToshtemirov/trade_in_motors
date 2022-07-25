import 'package:flutter/material.dart';
import 'package:trade_in_motors/data/models/cars_model.dart';
import 'package:trade_in_motors/presentation/widgets/body/details_body/details_listview.dart';

class DetailsBodyPage extends StatelessWidget {
  final CarModel cars;
  const DetailsBodyPage(
    this.cars, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 70, right: 70, top: 10),
          child: Image.asset(
            "assets/logo.png",
            width: 250,
          ),
        ),
        Expanded(child: DetailsListView(cars)),
      ],
    );
  }
}
