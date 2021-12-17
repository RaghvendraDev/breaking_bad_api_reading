import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reading_br_ba_character/controller/load_br_ba_character.dart';
import 'package:reading_br_ba_character/model/breaking_bad_model_list.dart';

class ShowDataPage extends StatelessWidget {
  BreakingBadCharcaterController breakingBadCharcaterController = Get.find();
  ShowDataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: breakingBadCharcaterController.isDataLoaded.value == true
          ? ListView.builder(
              shrinkWrap: true,
              itemCount: BreakingBadModelList.modelList.length,
              itemBuilder: (context, index) {
                var breakingBadcharcaterIndex =
                    BreakingBadModelList.modelList[index];
                return BreakingBadCharacterTile(
                    characterDetail: breakingBadcharcaterIndex);
              },
            )
          : Center(child: CircularProgressIndicator()),
    );
  }
}

class BreakingBadCharacterTile extends StatelessWidget {
  final characterDetail;
  const BreakingBadCharacterTile({Key? key, this.characterDetail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            width: size.width * 0.9,
            height: size.height * 0.3,
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: 10,
                  left: 10,
                  child: Row(
                    children: [
                      Text(
                        "${characterDetail.char_id}.",
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        characterDetail.name,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        characterDetail.nickname,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 30,
                  child: Text(
                    characterDetail.birthday,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
                Positioned(
                  top: 100,
                  left: 20,

                  // child: Container(
                  //   alignment: Alignment.center,
                  //   width: 100,
                  //   height: 30,
                  //   child: CustomScrollView(
                  //     slivers: [
                  //       SliverList(
                  //         delegate: SliverChildBuilderDelegate(
                  //           (BuildContext context, int index) {
                  //             return Container(
                  //                 padding:
                  //                     EdgeInsets.symmetric(horizontal: 5),
                  //                 decoration: BoxDecoration(
                  //                   color: Colors.blue,
                  //                   borderRadius: BorderRadius.circular(20),
                  //                 ),
                  //                 child: Text(
                  //                     characterDetail.occupation[index]));
                  //             // return Card(
                  //             //   // margin: const EdgeInsets.all(15),
                  //             //   child: Container(
                  //             //     //color: Colors.blue[100 * (index % 9 + 1)],
                  //             //     height: 20,
                  //             //     alignment: Alignment.center,
                  //             //     child: Text(
                  //             //       characterDetail.occupation[index],
                  //             //       style: const TextStyle(fontSize: 10),
                  //             //     ),
                  //             //   ),
                  //             // );
                  //           },
                  //           childCount: characterDetail
                  //               .occupation.length, // 1000 list items
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),

                  child: Container(
                    height: 50,
                    width: 100,
                    // decoration: BoxDecoration(
                    //   color: Colors.white,
                    // ),
                    child: ListView.builder(
                        itemCount: characterDetail.occupation.length,
                        itemBuilder: (context, index) {
                          var occupation = characterDetail.occupation[index];
                          return Text(
                            ". $occupation",
                            style: TextStyle(color: Colors.white),
                          );
                        }),
                  ),
                ),
                Positioned(
                  top: 160,
                  left: 20,
                  child: Container(
                    height: 50,
                    width: 100,
                    child: Text(
                      characterDetail.appearance.join(",").toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 200,
                  left: 30,
                  child: Text(
                    characterDetail.status,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
                Positioned(
                  right: 10,
                  bottom: 90,
                  child: Text(
                    characterDetail.portrayed,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
                Positioned(
                  right: 10,
                  bottom: 70,
                  child: Text(
                    characterDetail.category,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: ClipOval(
                    child: Image.network(
                      characterDetail.img,
                      width: size.width * 0.2,
                    ),
                    // radius: 40,
                    // backgroundImage:
                    //     NetworkImage(characterDetail.img, scale: 0.5),
                  ),
                ),
                Positioned(
                  right: 10,
                  bottom: 10,
                  child: Container(
                    height: 50,
                    width: 100,
                    child: Text(
                      characterDetail.better_call_saul_appearance
                          .join(",")
                          .toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
