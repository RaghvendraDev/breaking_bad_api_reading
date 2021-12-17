import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reading_br_ba_character/controller/load_br_ba_character.dart';

class HomePage extends StatelessWidget {
  BreakingBadCharcaterController breakingBadCharcater =
      Get.put(BreakingBadCharcaterController());
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                breakingBadCharcater.loadCharacter();
              },
              child: Text("Load Data"),
            ),
          ],
        ),
      ),
    );
  }
}
