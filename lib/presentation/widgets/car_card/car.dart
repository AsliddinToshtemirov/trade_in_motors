import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trade_in_motors/data/models/cars_model.dart';
import 'package:trade_in_motors/presentation/pages/details_page.dart';

// ignore: non_constant_identifier_names
Widget AllCar(CarModel mycars, context) {
  return Card(
    margin: const EdgeInsets.all(20),
    elevation: 20,
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Image.asset(mycars.imageUrl),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              mycars.marka +
                  " cactus shine  " +
                  mycars.model +
                  "  " +
                  mycars.year,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1f87f0)),
            )
          ],
        ),
        const Divider(),
        const SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const FaIcon(
                  FontAwesomeIcons.gasPump,
                  size: 18,
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      const TextSpan(
                          text: "Паливо: \n",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                        text: mycars.petrol,
                        style: const TextStyle(fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const FaIcon(
                  FontAwesomeIcons.whmcs,
                  size: 18,
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      const TextSpan(
                          text: "Трансмісія: \n",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                        text: mycars.transmission,
                        style: const TextStyle(fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const FaIcon(
                  FontAwesomeIcons.compactDisc,
                  size: 18,
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      const TextSpan(
                          text: " Привід: \n",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                        text: mycars.privid,
                        style: const TextStyle(fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const FaIcon(
                  FontAwesomeIcons.gaugeSimpleHigh,
                  size: 18,
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      const TextSpan(
                          text: "Пробіг:",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                        text: mycars.drivenKm,
                        style: const TextStyle(fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        const Divider(),
        const SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text.rich(
              TextSpan(
                children: [
                  const TextSpan(
                      text: "Ціна :",
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 18)),
                  TextSpan(
                    text: mycars.price,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  const TextSpan(
                      text: "  USD",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color.fromARGB(134, 0, 0, 0)))
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 4,
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailsPage(
                        cars: mycars,
                      )),
            );
          },
          child: Container(
            color: const Color(0xffefeff0),
            height: 50,
            width: 300,
            child: const Center(child: Text("ДОКЛАДНІШЕ")),
          ),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    ),
  );
}
