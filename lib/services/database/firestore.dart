import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  // get collection of orders
  final CollectionReference orders = FirebaseFirestore.instance.collection(
    'orders',
  );

  // get collection of users
  final CollectionReference users = FirebaseFirestore.instance.collection(
    'users',
  );

  // save orders to database
  Future<void> saveOrderToDatabse(String receipt) async {
    await orders.add({
      'date': DateTime.now(),
      'order': receipt,
      // add more fields as necessary...
    });
  }

  // add user detail to database
  Future<void> addUserDetail(
    String uid,
    String username,
    String email,
    String password,
  ) async {
    try {
      // set generate user id
      await users.doc(uid).set({
        'user name': username,
        'email': email,
        'password': password,
      });
    } on FirebaseException catch (e) {
      throw Exception(e.message);
    }
  }

  // GET user detail from database using UID (This is the method required by AccountPage)
  Future<DocumentSnapshot<Map<String, dynamic>>> getUserDetail(String uid) {
    return FirebaseFirestore.instance.collection('users').doc(uid).get();
  }
}
