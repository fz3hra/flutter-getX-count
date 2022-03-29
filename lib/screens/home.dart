import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:routes/controllers/counterController.dart';
import 'package:routes/screens/other.dart';

class HomeScreen extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Obx(
          () => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Clicks: ${counterController.counter.value}"),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: (){
                    Get.to(OtherScreen());
                  }, child: Text("Open other screen")
              )
            ],
          )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          counterController.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
