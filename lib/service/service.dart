import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:testing/model/testing_model.dart';

class Testingservice {
  CollectionReference firestore =
      FirebaseFirestore.instance.collection('testing');
// to create a collection inside collection without model

  // Future<void> adddata(String name, String age,{String? id}) async {
  //   await firestore.doc(id).collection("test"). add({"name": name, "age": age});
  // }

  Future<TestingModel> adddata(TestingModel model,String id) async {
    await firestore.doc(id).collection('tesst') .add(model.toJson());
    return model;
  }

  //   Stream<List<StModel>> getdata() {
  //   var a = fireStore.snapshots().map((snapshot) => snapshot.docs
  //       .map((doc) => StModel.fromJson(doc.data() as Map<String, dynamic>))
  //       .toList());
  //   print(a);
  //   return a;
  // }
}
