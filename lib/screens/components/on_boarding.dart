import 'package:flutter/material.dart';
import 'on_boarding_slide.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currentePage = 0;
  List<Map<String, String>> listBoarding = [
    {
      "titulo": "Titulo",
      "imagen": "assets/images/Naruto.jpg",
      "descripcion": "Naruto de mi fondo de pantalla"
    },
    {
      "titulo": "Titulo 1",
      "imagen": "assets/images/Naruto2.jpg",
      "descripcion": "Naruto salundo, igual de fondo de pantalla"
    },
    {
      "titulo": "Titulo 2",
      "imagen": "assets/images/Naruto3.jpg",
      "descripcion": "Naruto chiquito"
    },
    {
      "titulo": "Titulo 3",
      "imagen": "assets/images/Naruto4.jpg",
      "descripcion": "Naruto Ochiha"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(children: [
        Expanded(
          flex: 20,
          child: PageView.builder(
            itemBuilder: (context, index) => OnBoardingSlide(
              titulo: listBoarding[index]["titulo"],
              imagen: listBoarding[index]["imagen"],
              descripcion: listBoarding[index]["descripcion"],
            ),
            itemCount: listBoarding.length,
          ),
        ),
        const Expanded(
          flex: 4,
          child: Center(
            child: OutlinedButton(
              onPressed: null,
              child: Text('Button'),
            ),
          ),
        ),
      ]),
    );
  }
}
