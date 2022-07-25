import 'dart:async';

import 'package:flutter/material.dart';
import 'package:trade_in_motors/presentation/widgets/appbar/appbar.dart';
import 'package:trade_in_motors/presentation/widgets/body/body.dart';
import 'package:trade_in_motors/presentation/widgets/drawer/drawer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double opacityLevel = 1.0;
  double StackopacityLevel = 0;

  void changeOpacity() {
    setState(() {
      opacityLevel = opacityLevel == 0 ? 1.0 : 0.0;
      StackopacityLevel = StackopacityLevel == 1 ? 0.0 : 1.0;
    });
  }

  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 3), (timer) {
      return changeOpacity();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      endDrawer: const MyDrawer(),
      body: const MyBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          changeOpacity();
        },
        backgroundColor: const Color.fromARGB(255, 236, 163, 55),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                AnimatedOpacity(
                  opacity: opacityLevel,
                  duration: const Duration(seconds: 1),
                  child: const Center(
                      child: Icon(
                    Icons.phone,
                    size: 30,
                  )),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedOpacity(
                  opacity: StackopacityLevel,
                  duration: const Duration(seconds: 1),
                  child: const Center(
                      child: Text(
                    "КНОПКА \n ЗВ'ЯЗКУ",
                    style: TextStyle(fontSize: 8),
                  )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
