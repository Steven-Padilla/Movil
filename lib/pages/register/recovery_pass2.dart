import 'package:fist_app/pages/Inicio/inicio.dart';
import 'package:flutter/material.dart';

class RecoveryPass2 extends StatefulWidget {
  const RecoveryPass2({super.key});

  @override
  State<RecoveryPass2> createState() => _RecoveryPass2State();
}

class _RecoveryPass2State extends State<RecoveryPass2> {
  bool passObscureText2 = true;
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
          padding: EdgeInsets.only(bottom: 40, top: 30),
          child: SizedBox(
            width: 370,
            child: Text(
              'Por seguridad, tu contrasena debe tener una longitud de entre 8 y 15 caracteres, usar mayusculas, minusculas, contener por lo menos un numero y un caracter especial',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.justify,
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
                  'Nueva contraseña',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 45),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: ('Nueva contraseña'),
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
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    obscureText: passObscureText,
                  ),
                ),
              ),
              const SizedBox(
                width: double.infinity,
                child: Text(
                  textAlign: TextAlign.start,
                  'Confirmar nueva contraseña',
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
                    hintText: ('Confirmar tu nueva contraseña'),
                    suffixIcon: GestureDetector(
                      child: Icon(passObscureText2
                          ? Icons.visibility_off
                          : Icons.visibility),
                      onTap: () {
                        setState(() {
                          passObscureText2 = !passObscureText2;
                        });
                      },
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  obscureText: passObscureText2,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20, top: 280),
          child: MaterialButton(
            height: 55,
            minWidth: 350,
            onPressed: () async {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const Inicio()));
            },
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.grey.shade600),
              borderRadius: BorderRadius.circular(30),
            ),
            color: Colors.lightGreen[800],
            child: const Text(
              'Actualizar contraseña',
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
