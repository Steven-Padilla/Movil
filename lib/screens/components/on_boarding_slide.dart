import 'package:flutter/material.dart';

class OnBoardingSlide extends StatelessWidget {
  const OnBoardingSlide(
      {super.key, this.titulo, this.imagen, this.descripcion});
  final String? titulo, imagen, descripcion;

  @override
  Widget build(
    BuildContext context,
  ) {
    return Column(
      children: [
        Image(
          image: AssetImage(imagen!),
          width: 400,
          height: 300,
        ),
        Text(
          titulo!,
          style: const TextStyle(
            fontSize: 40.0,
            color: Colors.purple,
          ),
        ),
        Text(
          descripcion!,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 25.0,
          ),
        ),
      ],
    );
  }
}
