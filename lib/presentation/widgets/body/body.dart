import 'package:flutter/material.dart';
import 'package:trade_in_motors/presentation/widgets/body/listview.dart';

class MyBody extends StatelessWidget {
  const MyBody({Key? key}) : super(key: key);

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
        const Expanded(child: MyListView()),
      ],
    );
  }
}
