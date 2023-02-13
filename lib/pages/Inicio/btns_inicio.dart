import 'package:flutter/material.dart';
import 'package:fist_app/pages/login/login.dart';

class BtnsInicio extends StatelessWidget {
  const BtnsInicio({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const btnWidth = 300.0;
    const btnHeight = 55.0;
    const btnRadio = 30.0;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: MaterialButton(
            onPressed: () async {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const Login()));
            },
            height: btnHeight,
            minWidth: btnWidth,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 0, color: Colors.grey),
              borderRadius: BorderRadius.circular(btnRadio),
            ),
            color: Colors.blue,
            child: const Text(
              'Continuar con Google',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: MaterialButton(
            onPressed: () async {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const Login()));
            },
            height: btnHeight,
            minWidth: btnWidth,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 0, color: Colors.grey),
              borderRadius: BorderRadius.circular(btnRadio),
            ),
            color: Colors.blueAccent,
            child: const Text(
              'Continuar con Facebook',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
          ),
        ),
        MaterialButton(
          onPressed: () async {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => const Login()));
          },
          height: btnHeight,
          minWidth: btnWidth,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 3, color: Colors.grey),
            borderRadius: BorderRadius.circular(btnRadio),
          ),
          color: Colors.white,
          child: const Text(
            'Continuar con e-mail ',
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}
