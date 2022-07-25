import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trade_in_motors/core/constants/constants.dart';

import '../dropdown_menu.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: primaryColor,
        leading: Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 26),
              child: Icon(
                CupertinoIcons.search,
                size: 24,
              ),
            ),
          ],
        ),
        title: const Padding(
            padding: EdgeInsets.only(left: 50), child: DwopDownMenu()),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Builder(
                  builder: (context) => IconButton(
                        icon: const Icon(Icons.menu),
                        onPressed: () => Scaffold.of(context).openEndDrawer(),
                      )))
        ]);
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
