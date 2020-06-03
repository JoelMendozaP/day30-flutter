import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class ExerciseBloc implements Bloc {

  //1. Obtener datos de Exercises
  // Stream<QuerySnapshot> exerciseListStream = Firestore.instance.collection(CloudFirestoreAPI().EXERCISES).snapshots();
  // Stream<QuerySnapshot> get exerciseStream => exerciseListStream;

  // List<ExerciseInfo> builExercises(List<DocumentSnapshot> exercisesListSnapshot)
  // => _cloudFirestoreRepository.builExercises(exercisesListSnapshot);

  @override
  void dispose() {
    
  }
}