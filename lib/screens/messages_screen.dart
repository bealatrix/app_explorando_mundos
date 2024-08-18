import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mensagens'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Sajib Rahman'),
            subtitle: Text('Hi! How are you doing?'),
            onTap: () {},
          ),
          // Adicione mais ListTiles conforme necessário
        ],
      ),
    );
  }
}
