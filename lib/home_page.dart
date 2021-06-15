import 'dart:math';

import 'package:bmi_app/height_provider.dart';
import 'package:bmi_app/weight_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var weightProvider = Provider.of<WeightProvider>(context);
    var heightProvider = Provider.of<HeightProvider>(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your Weight (kg):',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            // note: menggunakan CONSUMER
            // Consumer<WeightProvider>(
            //   builder: (context, weightProvider, _) => Slider(
            //     min: 1,
            //     max: 100,
            //     divisions: 100,
            //     label: weightProvider.weight.round().toString(),
            //     value: weightProvider.weight,
            //     onChanged: (newValue) {
            //       newValue = newValue
            //           .roundToDouble(); // untuk merubah nilai newValue dibulatkan
            //       print('weight: $newValue');
            //       weightProvider.weight = newValue;
            //     },
            //   ),
            // ),
            // note: menggunakan provider.of
            Slider(
              min: 1,
              max: 100,
              divisions: 100,
              label: weightProvider.weight.round().toString(),
              value: weightProvider.weight,
              onChanged: (newValue) {
                newValue = newValue
                    .roundToDouble(); // untuk merubah nilai newValue dibulatkan
                print('weight: $newValue');
                weightProvider.weight = newValue;
              },
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Your Height (cm):',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            // note: menggunakan CONSUMER
            // Consumer<HeightProvider>(
            //   builder: (context, heightProvider, _) => Slider(
            //     min: 1,
            //     max: 200,
            //     value: heightProvider.height,
            //     divisions: 200,
            //     label: heightProvider.height.round().toString(),
            //     activeColor: Colors.pink,
            //     inactiveColor: Colors.pink.withOpacity(0.2),
            //     onChanged: (newValue) {
            //       newValue = newValue
            //           .roundToDouble(); // untuk merubah nilai newValue dibulatkan
            //       print('height: $newValue');
            //       heightProvider.height = newValue;
            //     },
            //   ),
            // ),
            // note: menggunakan provider.of
            Slider(
              min: 1,
              max: 200,
              value: heightProvider.height,
              divisions: 200,
              label: heightProvider.height.round().toString(),
              activeColor: Colors.pink,
              inactiveColor: Colors.pink.withOpacity(0.2),
              onChanged: (newValue) {
                newValue = newValue
                    .roundToDouble(); // untuk merubah nilai newValue dibulatkan
                print('height: $newValue');
                heightProvider.height = newValue;
              },
            ),
            SizedBox(
              height: 50,
            ),
            // note: menggunakan CONSUMER
            // Consumer<WeightProvider>(
            //   builder: (context, weightProvider, _) => Consumer<HeightProvider>(
            //     builder: (context, heightProvider, _) => Text(
            //       'Your BMI:\n${(weightProvider.weight / (pow(heightProvider.height / 100, 2))).toStringAsFixed(2)}',
            //       style: TextStyle(
            //         fontSize: 24,
            //         fontWeight: FontWeight.w500,
            //       ),
            //       textAlign: TextAlign.center,
            //     ),
            //   ),
            // )
            // note: menggunakan provider.of
            Text(
              'Your BMI:\n${(weightProvider.weight / (pow(heightProvider.height / 100, 2))).toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
