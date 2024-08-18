import 'package:flutter/material.dart';
import 'messages_screen.dart';
import 'profile_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore o Belo Mundo!'),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage(
                'assets/images/profile_pic.png'), // Substitua pela imagem correta
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Text(
            'Explore o\nBelo Mundo!',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          // Adicione os widgets de conteúdo aqui
        ],
      ),
    );
  }
}
