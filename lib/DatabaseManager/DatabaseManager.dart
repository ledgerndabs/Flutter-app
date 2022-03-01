// ignore: import_of_legacy_library_into_null_safe
import 'package:cloud_firestore/cloud_firestore.dart' show CollectionReference;

class DatabaseManager {
  final CollectionReference profileList =
      Firestore.instance.collection('profileInfo');

  Future updateUserList(
      String name, String gender, int score, String uid) async {
    return await profileList
        .doc(uid)
        .update({'name': name, 'gender': gender, 'score': score});
  }

  Future getUsersList() async {
    List itemsList = [];

    try {
      await profileList.get().then((querySnapshot) {
        // ignore: avoid_function_literals_in_foreach_calls
        querySnapshot.docs.forEach((element) {
          itemsList.add(element.data);
        });
      });
      return itemsList;
    } catch (e) {
      // ignore: avoid_print
      print(e.toString());
      return null;
    }
  }
}

class Firestore {
  // ignore: prefer_typing_uninitialized_variables
  static var instance;
}
