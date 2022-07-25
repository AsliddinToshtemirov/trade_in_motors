import 'package:flutter/material.dart';
import 'package:trade_in_motors/core/constants/constants.dart';

class Links extends StatelessWidget {
  const Links({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Card(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Підпишіться на розсилку",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              width: 240,
              child: Text(
                "Дізнавайтесь першими про нові надходження автомобілів",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: primaryColor,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 50,
              width: 200,
              color: const Color.fromARGB(255, 114, 13, 191),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/icons/viber.png",
                    height: 30,
                    width: 30,
                  ),
                  const Text(
                    "  Viber",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 50,
              width: 200,
              color: const Color.fromARGB(255, 0, 157, 255),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/icons/telegram.png",
                    height: 30,
                    width: 30,
                  ),
                  const Text(
                    "  Telegram",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 50,
              width: 200,
              color: const Color.fromARGB(255, 9, 196, 37),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.email_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                  Text(
                    "  E-Mail",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
