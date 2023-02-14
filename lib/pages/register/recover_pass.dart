import 'package:fist_app/pages/register/recovery_pass2.dart';
import 'package:flutter/material.dart';

class RecoveryPass extends StatefulWidget {
  const RecoveryPass({super.key});

  @override
  State<RecoveryPass> createState() => _RecoveryPassState();
}

class _RecoveryPassState extends State<RecoveryPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.pink),
          backgroundColor: Colors.purple[900],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Recuperar contraseña'),
              Image.asset(
                'assets/images/logo byn.png',
                height: 75,
              )
            ],
          )),
      body: Center(
        child: LayoutBuilder(builder:
            (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: body(context),
            ),
          );
        }),
      ),
    );
  }

  Column body(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 60, top: 50),
          child: Text(
            'Ingresa tu email para restablecer tu contraseña',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(
                width: double.infinity,
                child: Text(
                  textAlign: TextAlign.start,
                  'Correo electrónico',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    hintText: ('Dirección de correo'),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 360,
          child: Padding(
            padding: EdgeInsets.only(bottom: 20, left: 15, right: 10),
            child: Text(
              'Ingrese su correo electrónico registrado y le enviaremos un correo electrónico que contiene un enlace para restablecer su contraseña',
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20, top: 350),
          child: MaterialButton(
            height: 55,
            minWidth: 350,
            onPressed: () async {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const RecoveryPass2()));
            },
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.grey.shade600),
              borderRadius: BorderRadius.circular(30),
            ),
            color: Colors.lightGreen[800],
            child: const Text(
              'Enviar Solicitud',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
