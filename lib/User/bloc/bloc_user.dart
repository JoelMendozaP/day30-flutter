import 'package:day30/User/model/user.dart';
import 'package:day30/User/repository/cloud_firestore_repository.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:day30/User/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserBloc implements Bloc {

  final _auth_repository = AuthRepository();

  //flujo de datos - Streams
  //Stream - Firebase
  Stream<FirebaseUser> streamFirebase = FirebaseAuth.instance.onAuthStateChanged;
  Stream<FirebaseUser> get authStatus => streamFirebase;

  // Casos de uso
  // 1. SingIn a la aplicacion Google
  Future<FirebaseUser> SingInBloc() {
    return _auth_repository.signInFirebase();
  }

  //2. Registrar usuario en BD
  final _CloudFirestoreRepository = CloudFirestoreRepository();
  void updateUserData(User user) => _CloudFirestoreRepository.updateUserDataFirestore(user);

  signOut() {
    _auth_repository.signOunt();
  }

  @override
  void dispose() {
    
  }
}