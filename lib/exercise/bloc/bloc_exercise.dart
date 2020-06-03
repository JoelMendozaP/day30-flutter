import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:day30/User/repository/cloud_firestore_api.dart';
import 'package:day30/User/repository/cloud_firestore_repository.dart';
import 'package:day30/exercise/ui/widgets/exercise_info.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class ExerciseBloc implements Bloc {

  final _cloudFirestoreRepository = CloudFirestoreRepository();
  
  //1. Obtener datos de Exercises
  // Stream<QuerySnapshot> exerciseListStream = Firestore.instance.collection(CloudFirestoreAPI().EXERCISES).snapshots();
  // Stream<QuerySnapshot> get exerciseStream => exerciseListStream;

  // List<ExerciseInfo> builExercises(List<DocumentSnapshot> exercisesListSnapshot)
  // => _cloudFirestoreRepository.builExercises(exercisesListSnapshot);

  @override
  void dispose() {
    
  }
}