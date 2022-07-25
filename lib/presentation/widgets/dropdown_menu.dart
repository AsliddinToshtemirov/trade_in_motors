import 'package:flutter/material.dart';

class DwopDownMenu extends StatefulWidget {
  const DwopDownMenu({Key? key}) : super(key: key);

  @override
  State<DwopDownMenu> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<DwopDownMenu> {
  String dropdownValue = ' +38 (096) 097-7-888 ';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(
        Icons.arrow_drop_down,
        color: Colors.white,
      ),
      elevation: 50,
      style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
      underline: Container(
        height: 2,
        color: const Color.fromARGB(255, 254, 254, 254),
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      selectedItemBuilder: (BuildContext context) {
        return <String>[
          ' +38 (096) 097-7-888 ',
          ' +38 (036) 097-7-888 ',
          ' +38 (094) 097-7-456 ',
        ].map((String value) {
          return Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Text(
              dropdownValue,
              style: const TextStyle(
                  color: Color.fromARGB(
                    255,
                    242,
                    242,
                    242,
                  ),
                  fontSize: 16),
            ),
          );
        }).toList();
      },
      items: <String>[
        ' +38 (096) 097-7-888 ',
        ' +38 (036) 097-7-888 ',
        ' +38 (094) 097-7-456 ',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
          ),
        );
      }).toList(),
    );
  }
}
