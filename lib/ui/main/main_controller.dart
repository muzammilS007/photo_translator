import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../models/main/list_option_model.dart';

class MainController extends GetxController{
  var listOptions = <ListOptionModel>[];
  @override
  void onInit() {
    listOptions.add(ListOptionModel(Icons.g_translate,"Translator"));
    listOptions.add(ListOptionModel(Icons.mic,"Voice"));
    listOptions.add(ListOptionModel(Icons.browse_gallery,"Gallery"));
    listOptions.add(ListOptionModel(Icons.camera_alt,"Camera"));
    listOptions.add(ListOptionModel(Icons.broadcast_on_home,"Detection"));
    super.onInit();
  }
}