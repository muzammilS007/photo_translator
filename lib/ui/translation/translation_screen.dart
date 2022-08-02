import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class TranslationScreen extends StatelessWidget {
  const TranslationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var txtInputController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Translation",
        ),
        leading: IconButton(
          onPressed: () => {Get.back()},
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(children: [
        SizedBox(
          height: 200,
          child: Card(
            elevation: 4,
            child:  Column(
              children: [
                Row(children: [
                  Container(
                    child: new Text (
                        "English",
                        style: new TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal
                        )
                    ),
                    decoration: new BoxDecoration (
                        border: Border.all(
                          color: Color(0xFF2078EE),
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                        borderRadius:  BorderRadius.all( Radius.circular(10.0)),
                        color: Colors.white
                    ),
                    padding: new EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                  ),
                ],),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: txtInputController,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                        border: InputBorder.none,

                        hintText: "Enter for search...",
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.white)
                        )
                    ),

                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: 60,
          height: 60,
          child: IconButton(onPressed: ()=>{

          }, icon: Icon(Icons.translate , color: Colors.white,)),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue),
        ),
        Card(
          color: Colors.blue,
          elevation: 4,
          child:  Container(
            height: 200,

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                enabled: false,
                controller: txtInputController,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    border: InputBorder.none,

                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.white)
                    )
                ),

              ),
            ),
          ),
        ),

      ],),
    );
  }
}
