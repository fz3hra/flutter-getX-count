import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:routes/controllers/counterController.dart';

class OtherScreen extends StatelessWidget {
  final CounterController _counterController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Screen was clicked ${_counterController.counter.value}"),
          SizedBox(height: 10,),
          ElevatedButton(
              onPressed: (){
                Get.back();
              }, child: Text("Open other screen" )
          )
        ],
      ),
    );
  }
}
