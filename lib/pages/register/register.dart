import 'package:fist_app/pages/Inicio/inicio.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool agree = false;
  bool passObscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.pink),
          backgroundColor: Colors.purple[900],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Registrate'),
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
          padding: EdgeInsets.only(bottom: 60, top: 60),
          child: Text(
            'Crea una cuenta para empezar a usar la app',
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
                  'Nombre',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30, top: 10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    hintText: ('Nombre Completo'),
                  ),
                ),
              ),
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
                padding: const EdgeInsets.only(bottom: 30, top: 10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    hintText: ('Dirección de correo'),
                  ),
                ),
              ),
              const SizedBox(
                width: double.infinity,
                child: Text(
                  textAlign: TextAlign.start,
                  'Contraseña',
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
                    hintText: ('Contraseña'),
                    suffixIcon: GestureDetector(
                      child: Icon(passObscureText
                          ? Icons.visibility_off
                          : Icons.visibility),
                      onTap: () {
                        setState(() {
                          passObscureText = !passObscureText;
                        });
                      },
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  obscureText: passObscureText,
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 20, left: 35),
          child: Text(
            'La contraseña debe contener caracteres, números y simbolos con un mínimo de 6 caracteres',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              Checkbox(
                value: agree,
                onChanged: (value) {
                  setState(() {
                    agree = value ?? false;
                  });
                },
                shape: const CircleBorder(),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.80,
                child: RichText(
                  text: const TextSpan(
                    text: 'Al registarme, acepto los',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                    children: [
                      TextSpan(
                        text: ' terminos y condiciones',
                        style: TextStyle(
                          color: Colors.pink,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(text: ' y la'),
                      TextSpan(
                        text: ' política de privacidad',
                        style: TextStyle(
                          color: Colors.pink,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20, top: 50),
          child: MaterialButton(
            height: 55,
            minWidth: 350,
            onPressed: () async {
              Navigator.pop(
                  context, MaterialPageRoute(builder: (_) => const Inicio()));
            },
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.grey.shade600),
              borderRadius: BorderRadius.circular(30),
            ),
            color: Colors.lightGreen[800],
            child: const Text(
              'Crear cuenta',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              '¿Ya tienes una cuenta?',
              style: TextStyle(fontSize: 15),
            ),
            TextButton(
              onPressed: null,
              child: Text(
                'Inicia sesión',
                style: TextStyle(color: Colors.pink),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
