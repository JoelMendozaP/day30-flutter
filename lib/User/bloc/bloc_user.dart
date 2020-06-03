import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:day30/Routine/model/routine.dart';
import 'package:day30/Routine/ui/widgets/card_routine.dart';
import 'package:day30/User/model/user.dart';
import 'package:day30/User/repository/cloud_firestore_api.dart';
import 'package:day30/User/repository/cloud_firestore_repository.dart';
import 'package:day30/exercise/ui/widgets/exercise_info.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:day30/User/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserBloc implements Bloc {

  final _auth_repository = AuthRepository();

  //flujo de datos - Streams
  //Stream - Firebase
  Stream<FirebaseUser> streamFirebase = FirebaseAuth.instance.onAuthStateChanged;
  Stream<FirebaseUser> get authStatus => streamFirebase;
  Future<FirebaseUser> get currentUser =>  FirebaseAuth.instance.currentUser();

  
  // UserBloc.currentUser.then((FirebaseUser user) {
  //   if(user !null){
          // String uid = user.uid;
  //   }
  // });
  // Casos de uso
  // 1. SingIn a la aplicacion Google
  Future<FirebaseUser> SingInBloc() {
    return _auth_repository.signInFirebase();
  }

  //2. Registrar usuario en BD
  final _cloudFirestoreRepository = CloudFirestoreRepository();
  void updateUserData(User user) => _cloudFirestoreRepository.updateUserDataFirestore(user);

  //3. Obtener datos de Routines
  Stream<QuerySnapshot> routineListStream = Firestore.instance.collection(CloudFirestoreAPI().ROUTINES).snapshots();
  Stream<QuerySnapshot> get routineStream => routineListStream;

  List<CardRoutine> buildRoutines(List<DocumentSnapshot> routinesListSnapshot) 
  => _cloudFirestoreRepository.buildRoutines(routinesListSnapshot);

  //3. Obtener datos de Exercises
  // Stream<QuerySnapshot> exerciseListStream = Firestore.instance.collection(CloudFirestoreAPI().EXERCISES).snapshots();
  // Stream<QuerySnapshot> get exerciseStream => exerciseListStream;

  Stream<QuerySnapshot> exerciseListStream = Firestore.instance.collection(CloudFirestoreAPI().EXERCISES).snapshots();
  Stream<QuerySnapshot> get exerciseStream => exerciseListStream;

  List<Widget> builExercises(List<DocumentSnapshot> exercisesListSnapshot,Routine addRoutine)
  => _cloudFirestoreRepository.builExercises(exercisesListSnapshot, addRoutine);


  signOut() {
    _auth_repository.signOunt();
  }

  @override
  void dispose() {
    
  }
}