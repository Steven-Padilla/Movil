import 'package:fist_app/pages/Inicio/inicio.dart';
import 'package:flutter/material.dart';
import 'on_boarding_slide.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currentPage = 0;
  late PageController varController;
  List<Map<String, String>> listBoarding = [
    {
      "titulo": "Esparcimiento",
      "imagen": "assets/images/B1.png",
      "descripcion":
          "Brindamos todos los servicios para consentir a tu mascota."
    },
    {
      "titulo": "Adopción",
      "imagen": "assets/images/B2.png",
      "descripcion":
          "Nulla faucibus ut odio scelerisque, vitae molestie lectus feugiat."
    },
    {
      "titulo": "Hospitalidad",
      "imagen": "assets/images/B3.png",
      "descripcion":
          "Nulla faucibus ut odio scelerisque, vitae molestie lectus feugiat."
    },
    {
      "titulo": "Veterinaria",
      "imagen": "assets/images/B4.png",
      "descripcion":
          "Nulla faucibus ut odio scelerisque, vitae molestie lectus feugiat."
    },
    {
      "titulo": "Tienda",
      "imagen": "assets/images/B5.png",
      "descripcion":
          "Nulla faucibus ut odio scelerisque, vitae molestie lectus feugiat."
    }
  ];
  @override
  void initState() {
    super.initState();
    varController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    super.dispose();
    varController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 450,
            child: PageView.builder(
              controller: varController,
              itemBuilder: (context, index) => OnBoardingSlide(
                titulo: listBoarding[index]["titulo"],
                imagen: listBoarding[index]["imagen"],
                descripcion: listBoarding[index]["descripcion"],
              ),
              itemCount: listBoarding.length,
              onPageChanged: (int page) {
                setState(() {
                  currentPage = page;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  listBoarding.length, (index) => buildNav(index)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: MaterialButton(
              color: currentPage == listBoarding.length - 1
                  ? Colors.green
                  : Colors.white,
              textColor: currentPage == listBoarding.length - 1
                  ? Colors.white
                  : Colors.grey,
              minWidth: 350,
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.circular(20),
              ),
              onPressed: () async {
                currentPage == listBoarding.length - 1
                    ? Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (_) => const Inicio()))
                    : varController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut);
              },
              child: Text(
                currentPage == listBoarding.length - 1
                    ? 'Continuar'
                    : 'Siguiente',
                style: (const TextStyle(
                  fontSize: 20,
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }

  AnimatedContainer buildNav(int index) {
    return AnimatedContainer(
      duration: kThemeAnimationDuration,
      margin: const EdgeInsets.all(5),
      height: 5,
      width: currentPage == index ? 30 : 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentPage == index ? Colors.red : Colors.grey,
      ),
    );
  }
}
