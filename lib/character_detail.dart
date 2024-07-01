import 'package:flutter/material.dart';
import 'character.dart';

class CharacterDetail extends StatelessWidget {
  final Character character;

  CharacterDetail({required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(character.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Image.network(character.image),
            ),
            SizedBox(height: 16.0),
            Text(
              'Name: ${character.name}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Status: ${character.status}',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Species: ${character.species}',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Gender: ${character.gender}',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Origin: ${character.origin}',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Location: ${character.location}',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
