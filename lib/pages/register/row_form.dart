import 'package:flutter/material.dart';

class RowForm extends StatelessWidget {
  const RowForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          SizedBox(
            width: 150,
            child: TextField(
              decoration: InputDecoration(hintText: ('Hola')),
            ),
          ),
          SizedBox(
            width: 150,
            child: TextField(
              decoration: InputDecoration(hintText: ('Hola')),
            ),
          ),
        ]);
  }
}
