import 'package:fist_app/pages/register/row_form.dart';
import 'package:flutter/material.dart';

class Inputs extends StatelessWidget {
  const Inputs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: TextField(
            decoration: InputDecoration(
              hintText: ('email'),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: TextField(
            decoration: InputDecoration(
              hintText: ('First name'),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: TextField(
            decoration: InputDecoration(
              hintText: ('lastname'),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: TextField(
            decoration: InputDecoration(
              hintText: ('username'),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: TextField(
            decoration: InputDecoration(
              hintText: ('password'),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: TextField(
            decoration: InputDecoration(
              hintText: ('Confirm password'),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: RowForm(),
        ),
        OutlinedButton(
          onPressed: () {},
          child: const Text('Boton'),
        ),
      ],
    );
  }
}
