import 'package:flutter/material.dart';
import 'package:testing/model/testing_model.dart';
import 'package:testing/service/service.dart';
import 'package:testing/view/addscreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Addscreen(),
          ));
        },
        child: const Icon(Icons.add),
      ),
      body: StreamBuilder(
        stream: Testingservice().getdata(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(child: Text('error${snapshot.hasError}'));
          } else {
            // List<QueryDocumentSnapshot<TestingModel>> testdoc =
            //     snapshot.data?.docs ?? [];

            // if (testdoc.isEmpty) {
            //   return Center(
            //     child: Text('no data available'),
            //   );
            // }
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                TestingModel data = snapshot.data![index];
                return ListTile(
                  title: Text(data.name!),
                  subtitle: Text(data.age!),
                );
              },
            );
          }
        },
      ),
    );
  }
}
