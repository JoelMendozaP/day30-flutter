import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:day30/Routine/ui/widgets/card_routine.dart';
import 'package:day30/User/model/user.dart';
import 'package:day30/User/repository/cloud_firestore_api.dart';
import 'package:day30/exercise/ui/widgets/exercise_info.dart';

class CloudFirestoreRepository {
  final _cloudFirestoreAPI = CloudFirestoreAPI();
  
  void updateUserDataFirestore(User user) => _cloudFirestoreAPI.updateUserData(user);

  List<CardRoutine> buildRoutines(List<DocumentSnapshot> routinesListSnapshot) 
  => _cloudFirestoreAPI.buildRoutines(routinesListSnapshot);

  List<ExerciseInfo> builExercises(List<DocumentSnapshot> exercisesListSnapshot)
  => _cloudFirestoreAPI.builExercises(exercisesListSnapshot);
}