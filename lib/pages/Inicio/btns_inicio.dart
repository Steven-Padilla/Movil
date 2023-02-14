import 'package:fist_app/pages/register/register.dart';
import 'package:flutter/material.dart';
import 'package:fist_app/pages/login/login.dart';

class BtnsInicio extends StatelessWidget {
  const BtnsInicio({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const btnWidth = 350.0;
    const btnHeight = 55.0;
    const btnRadio = 30.0;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: SizedBox(
            height: btnHeight,
            width: btnWidth,
            child: ElevatedButton.icon(
              icon: const Icon(
                Icons.g_mobiledata,
                color: Colors.white,
                size: 35,
              ),
              onPressed: () async {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Login()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(btnRadio),
                ),
                elevation: 5,
              ),
              label: const Text(
                'Continuar con Google     ',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: SizedBox(
            height: btnHeight,
            width: btnWidth,
            child: ElevatedButton.icon(
              icon: const Icon(
                Icons.facebook,
                color: Colors.white,
              ),
              onPressed: () async {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => const Login()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo[900],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(btnRadio),
                ),
                elevation: 5,
              ),
              label: const Text(
                'Continuar con Facebook',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: btnHeight,
          width: btnWidth,
          child: ElevatedButton.icon(
            icon: const Icon(
              Icons.mail,
              color: Colors.grey,
            ),
            onPressed: () async {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const Register()));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              side: const BorderSide(width: 3, color: Colors.grey),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(btnRadio),
              ),
              elevation: 5,
            ),
            label: Text(
              'Continuar con e-mail     ',
              style: TextStyle(
                color: Colors.grey[600],
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
