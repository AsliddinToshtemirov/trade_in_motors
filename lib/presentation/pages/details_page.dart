import 'package:flutter/material.dart';
import 'package:trade_in_motors/data/models/cars_model.dart';
import 'package:trade_in_motors/presentation/widgets/appbar/appbar.dart';
import 'package:trade_in_motors/presentation/widgets/body/details_body/details_body.dart';
import 'package:trade_in_motors/presentation/widgets/float_act_button/float_ac_but.dart';

class DetailsPage extends StatelessWidget {
  final CarModel cars;
  const DetailsPage({Key? key, required this.cars}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      floatingActionButton: const FloatingAction(),
      body: DetailsBodyPage(cars),
    );
  }
}
