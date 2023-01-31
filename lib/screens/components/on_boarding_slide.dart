import 'package:flutter/material.dart';

class OnBoardingSlide extends StatelessWidget {
  const OnBoardingSlide(
      {super.key, this.titulo, this.imagen, this.descripcion});
  final String? titulo, imagen, descripcion;

  @override
  Widget build(
    BuildContext context,
  ) {
    return Padding(
      padding: const EdgeInsets.only(top: 100),
      child: Column(
        children: [
          Text(
            titulo!,
            style: const TextStyle(
              fontSize: 40.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 50),
            child: Image(
              image: AssetImage(imagen!),
              width: 400,
              height: 300,
            ),
          ),
          Text(
            descripcion!,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 25.0,
            ),
          ),
        ],
      ),
    );
  }
}
