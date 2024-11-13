import 'package:coffe_card/coffe_prefs.dart';
import 'package:coffe_card/styled_body_text.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //bagian kepala aplikasi
        title: const Text(
          'My Coffe Id',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ), // harus benar2 mengetahui tempat untuk memberikan const
        backgroundColor: Colors.brown[800],
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.brown[200],
            child: const StyledBodyText('Kriteria kopi kesukaan...'),
          ),
          Container(
              padding: const EdgeInsets.all(20),
              color: Colors.brown[100],
              child: const CoffePrefs() // menggunakan class CoffePrefs
              ),
          Expanded(
            child: Image.asset(
              'assets/img/coffee_bg.jpg',
              fit: BoxFit.cover,
              alignment: Alignment.bottomCenter,
            ),
          ),
        ],
      ),
    );
  }
}
