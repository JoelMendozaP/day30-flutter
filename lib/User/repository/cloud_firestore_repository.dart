import 'package:day30/User/model/user.dart';
import 'package:day30/User/repository/cloud_firestore_api.dart';

class CloudFirestoreRepository {
  final _cloudFirestoreAPI = CloudFirestoreAPI();
  
  void updateUserDataFirestore(User user) => _cloudFirestoreAPI.updateUserData(user);
}