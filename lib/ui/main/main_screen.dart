import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:photo_translator/ui/main/main_controller.dart';
import 'package:photo_translator/ui/main/widget/text_icon_widget.dart';
import 'package:photo_translator/ui/main/widget/vertically_text_image.dart';
import 'package:photo_translator/util/constants.dart';

import '../../util/images_constant.dart';
import '../translation/translation_screen.dart';

GlobalKey<ScaffoldState> drawerkey = GlobalKey();

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var drawerWidht = MediaQuery.of(context).size.width / 2;

    return GetBuilder<MainController>(
      // specify type as Controller
      init: MainController(), // intialize with the Controller
      builder: (value) => Scaffold(
        key: drawerkey,
        drawer: Drawer(
          width: drawerWidht,
          child: Container(
            color: Colors.lightBlue,
            child: Column(
              children: [
                Divider(
                  height: 20,
                ),
                Flexible(
                  child: Container(
                      color: Colors.blue,
                      height: 150,
                      child: TextImageWidget(
                        Constants.APP_NAME,
                        false,
                        18,
                        icon: null,
                        image: AssetsImages.icon,
                      )),
                ),
                GestureDetector(
                    onTap: () => {drawerkey.currentState?.closeDrawer()},
                    child: TextImageWidget(
                      Constants.HISTORY,
                      true,
                      14,
                      icon: Icons.history,
                      image: AssetsImages.icon,
                    )),
                GestureDetector(
                    onTap: () => {drawerkey.currentState?.closeDrawer()},
                    child: TextImageWidget(
                      Constants.FAVOURITE,
                      true,
                      14,
                      icon: Icons.favorite,
                      image: AssetsImages.icon,
                    )),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: Text("Photo Translator"),
          leading: IconButton(
              onPressed: () => {drawerkey.currentState?.openDrawer()},
              icon: Icon(Icons.dashboard)),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          shrinkWrap: true,
          children: List.generate(
            value.listOptions.length,
            (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () => {
                    if (value!.listOptions![index]!.title == "Translator") {
                      Get.to(()=>TranslationScreen())
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFF2078EE),
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        )),
                    child: VerticalyTextImage(
                        value!.listOptions![index]!.title!,
                        value!.listOptions![index]!.icon!),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
