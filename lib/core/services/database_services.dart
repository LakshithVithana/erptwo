import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/user_model.dart';

///users collection reference
final CollectionReference usersCollection =
    FirebaseFirestore.instance.collection('users');

class DatabaseServices {
  final String? uid;
  DatabaseServices({this.uid});

  ///this is created to get userDetail from snapshot
  UserDetails _userDetailsFromSnapshot(DocumentSnapshot snapshot) {
    return UserDetails(
        uid: uid,
        email: (snapshot.data() as dynamic)['email'],
        isAdmin: (snapshot.data() as dynamic)['isAdmin'],
        favoriteList: (snapshot.data() as dynamic)['favoriteList'],
        expandedList: (snapshot.data() as dynamic)['expandedList'],
        name: (snapshot.data() as dynamic)['name']);
  }

  //get user doc stream
  Stream<UserDetails> get userDetails {
    return usersCollection.doc(uid).snapshots().map(_userDetailsFromSnapshot);
  }

  //update user data
  Future updateUserData({
    String? email,
  }) async {
    await usersCollection.doc(uid).set({
      'email': email,
      'isAdmin': true,
      'favoriteList': [],
      'expandedList': [],
    });
  }
}
