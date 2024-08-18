import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/profile_pic.png'), // Substitua pela imagem correta
            ),
            SizedBox(height: 20),
            Text('Leonardo', style: TextStyle(fontSize: 24)),
            Text('leonardo@gmail.com', style: TextStyle(fontSize: 16, color: Colors.grey)),
            SizedBox(height: 20),
            // Adicione outros elementos do perfil aqui
          ],
        ),
      ),
    );
  }
}
