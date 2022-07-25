import 'package:flutter/material.dart';

class Homepa extends StatefulWidget {
  const Homepa({Key? key}) : super(key: key);

  @override
  State<Homepa> createState() => _HomepaState();
}

class _HomepaState extends State<Homepa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Myitems(list[0], context),
        Myitems(list[1], context),
        Myitems(list[2], context),
        Myitems(list[3], context),
        Myitems(list[4], context)
      ]),
    );
  }

  Widget Myitems(Lugatlar word, context) {
    return InkWell(
      onTap: () {},
      child: Card(
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Text(
                  word.name,
                  style: const TextStyle(fontSize: 25),
                )
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Text(word.discr)
              ],
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}

class Lugatlar {
  String name;
  String discr;
  String full;
  Lugatlar(this.name, this.discr, this.full);
}

List<Lugatlar> list = [
  Lugatlar("abjirlik", "adeptness,adeptness",
      "ChaOyoq-qoʻli tez, tez harakat qila oladigan; epchil, chaqqon."),
  Lugatlar("abstraktsiya", "Abstraction", "Mavhumlik, mavjud emaslik. "),
  Lugatlar("ahamiyat", "importance", "Qandaydir qiymatga ega bo'lish"),
  Lugatlar("agent", "Agent", "kimnidir kuzatib yuradigan shaxs "),
  Lugatlar("ahmoq", "Stupid, Foolish",
      'Aql bilan ish qilmaydigan, aqlga zid, bemaʼni ishlar qiladigan, shunday ishlarga yoʻl qoʻyadigan.')
];
