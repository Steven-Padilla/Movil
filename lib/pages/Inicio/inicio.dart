import 'package:fist_app/pages/Inicio/btns_inicio.dart';
import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 5,
            child: Center(
              child: Image.asset(
                'assets/images/logo color.png',
                height: 150,
              ),
            ),
          ),
          const Expanded(
            flex: 3,
            child: BtnsInicio(),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                const TextButton(
                  onPressed: null,
                  child: Text(
                    'Entrar como invitado',
                    style: TextStyle(color: Colors.pink),
                  ),
                ),
                const TextButton(
                  onPressed: null,
                  child: Text(
                    'Entrar como vendedor',
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('¿Ya tienes una cuenta?'),
                    TextButton(
                      onPressed: null,
                      child: Text(
                        'Inicia sesión',
                        style: TextStyle(color: Colors.pink),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
