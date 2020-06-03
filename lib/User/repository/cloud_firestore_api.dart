import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:day30/User/model/user.dart';

class CloudFirestoreAPI {
  final String USERS = 'users';
  final String PLACE = 'place';

  final Firestore _db = Firestore.instance;
  void updateUserData(User user) async {
    DocumentReference ref = _db.collection(USERS).document(user.uid);
    return await ref.setData({
      'uid': user.uid,
      'name': user.name,
      'email': user.email,
      'photoURL': user.photoURL,
      'myPlaces': user.myRoutines,
      'myFavoriteRoutines': user.myFavoriteRoutines,
      'lastSignIn': DateTime.now(),
    }, merge: true);
  }
}