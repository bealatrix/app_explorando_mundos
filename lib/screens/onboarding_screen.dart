import 'package:flutter/material.dart';
import 'login_screen.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (int page) {
          setState(() {
            _currentPage = page;
          });
        },
        children: [
          OnboardingPage(
            image:
                'assets/images/intro1.png', // Edite essa linha com a imagem correta
            title: 'A vida é curta e o mundo é vasto',
            description:
                'Na Friends tours and travel, personalizamos passeios educativos...',
            isLastPage: false,
            onNextPressed: () {
              _pageController.nextPage(
                duration: Duration(milliseconds: 400),
                curve: Curves.easeInOut,
              );
            },
          ),
          OnboardingPage(
            image:
                'assets/images/intro2.png', // Edite essa linha com a imagem correta
            title: 'É um grande mundo lá fora, vá explorar',
            description: 'Para aproveitar ao máximo sua aventura...',
            isLastPage: false,
            onNextPressed: () {
              _pageController.nextPage(
                duration: Duration(milliseconds: 400),
                curve: Curves.easeInOut,
              );
            },
          ),
          OnboardingPage(
            image:
                'assets/images/intro3.png', // Edite essa linha com a imagem correta
            title: 'As pessoas não fazem viagens, as viagens levam pessoas',
            description: 'Para aproveitar ao máximo sua aventura...',
            isLastPage: true,
            onNextPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final bool isLastPage;
  final VoidCallback? onNextPressed;

  OnboardingPage({
    required this.image,
    required this.title,
    required this.description,
    this.isLastPage = false,
    this.onNextPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // Adiciona um SafeArea para evitar sobreposição com a barra de status
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:
              CrossAxisAlignment.stretch, // Ajusta o alinhamento
          children: [
            Expanded(
              // Usa o Expanded para ajustar a imagem ao espaço disponível
              child: Image.asset(
                image,
                fit: BoxFit.contain, // Ajusta a imagem para caber no espaço
              ),
            ),
            SizedBox(height: 20),
            Text(
              title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center, // Centraliza o texto
            ),
            SizedBox(height: 10),
            Text(
              description,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: onNextPressed,
              child: Text(isLastPage ? 'Iniciar' : 'Próximo'),
            ),
          ],
        ),
      ),
    );
  }
}
