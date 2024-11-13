import 'package:coffe_card/styled_body_text.dart';
import 'package:flutter/material.dart';

class CoffePrefs extends StatefulWidget {
  // menggunakan statefulWidget alih alih menggunakan statelessWidget untuk layar yang mengalami perubahan
  const CoffePrefs({super.key});

  @override
  State<CoffePrefs> createState() => _CoffePrefsState();
}

class _CoffePrefsState extends State<CoffePrefs> {
  int strength = 1;
  int sugars = 1;

  // void decreaseStrength() {
  //   setState(() {
  //     strength = strength > 1 ? strength - 1 : 1;
  //   });
  // }

  // void decreaseSugars() {
  //   setState((){
  //     sugars = sugars > 0 ? sugars - 1 : 0;
  //   });
  // }

  void increaseStrength() {
    setState(() {
      // setState digunakan jika function memiliki fungsi yang akan mempengaruhi nilai
      strength = strength < 5 ? strength + 1 : 1;
    });
  }

  void increaseSugar() {
    setState(() {
      sugars = sugars < 5 ? sugars + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row( // strength
          children: [
            const StyledBodyText("Tingkat Kopi: "),

            for (int i=0; i < strength; i++) // untuk for loop di list[] tidak perlu menggunakan {} tapi majukan saja kedepan untuk membedakan
              Image.asset(
                'assets/img/coffee_bean.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            
            const Expanded(child: SizedBox()),
            // FilledButton(
            //   style: FilledButton.styleFrom(
            //     backgroundColor: Colors.brown,
            //     foregroundColor: Colors.white,
            //   ),
            //   onPressed: decreaseStrength,
            //   child: const Text('-'),
            // ),
            // const SizedBox(width: 6,),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white,
              ),
              onPressed: increaseStrength,
              child: const Text('+'),
            )
          ],
        ),

        Row( // sugars
          children: [
          const StyledBodyText("Gula: "),

            if (sugars == 0)
              const Text('(Tidak menggunakan gula)', style: TextStyle(
                fontSize: 12,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),),

            for (int i = 0; i < sugars; i++)
              Image.asset(
                'assets/img/sugar_cube.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            
            const Expanded(child: SizedBox()),
            // FilledButton(
            //   style: FilledButton.styleFrom(
            //     backgroundColor: Colors.brown,
            //     foregroundColor: Colors.white,
            //   ),
            //   onPressed: decreaseSugars,
            //   child: const Text('-'),
            // ),
            // const SizedBox(width: 6),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white,
              ),
              onPressed: increaseSugar,
              child: const Text('+'),
            ),
        ]),

        const SizedBox(height: 12,),

        const Text('notes: 1 gambar menandakan 1 sendok teh', style: TextStyle(
          fontSize: 12,

        ),),
      ],
    );
  }
}
