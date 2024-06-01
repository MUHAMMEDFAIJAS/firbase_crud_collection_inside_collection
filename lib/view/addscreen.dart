import 'package:flutter/material.dart';
import 'package:random_string/random_string.dart';
import 'package:testing/model/testing_model.dart';
import 'package:testing/service/service.dart';

class Addscreen extends StatelessWidget {
  const Addscreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController ageController = TextEditingController();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: nameController,
            decoration: InputDecoration(
                hintText: 'name',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
          TextField(
            controller: ageController,
            decoration: InputDecoration(
                hintText: 'age',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
          TextButton(
              onPressed: () {
                String id = randomAlphaNumeric(10);
                TestingModel stModel = TestingModel(
                    age: ageController.text, name: nameController.text);
                Testingservice().adddata(stModel, id);
                // .adddata(nameController.text, ageController.text,);
                
              },
              child:const Text('submit')),
        ],
      ),
    );
  }
}
