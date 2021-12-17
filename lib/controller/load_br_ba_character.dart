import 'dart:convert';

import 'package:get/state_manager.dart';
import 'package:http/http.dart' as http;
import 'package:reading_br_ba_character/model/braeking_bad_model.dart';
import 'package:reading_br_ba_character/model/breaking_bad_model_list.dart';
import 'package:get/get.dart';
import 'package:reading_br_ba_character/view/show_data_page.dart';

class BreakingBadCharcaterController extends GetxController {
  var name = "".obs;
  var isDataLoaded = false.obs;

  Future<void> loadCharacter() async {
    var response = await http.get(Uri.parse(
        "https://breakingbadapi.com/api/characters?limit=10&offset=0&fbclid=IwAR2sCV-nFiDRTuEXxGGHxt4AvUnrdm09N2U9unAYwZtq9yJ3BDJXIsJNc6Y"));

    //print(response.body);
    var responseData = jsonDecode(response.body);
    // var decodeData = responseData[];

    print(responseData);

    if (response.statusCode == 200) {
      // UserModelList.users =
      //     List.from(decodeData).map((e) => User.fromMap(e)).toList();

      BreakingBadModelList.modelList = List.from(responseData)
          .map((e) => BreakingBadModel.fromMap(e))
          .toList();

      Get.to(() => ShowDataPage());
      isDataLoaded.value = true;
      // print(BreakingBadModelList.modelList.length.toString());
    }
  }
}
