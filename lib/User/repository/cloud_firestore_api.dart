import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:day30/Routine/model/routine.dart';
import 'package:day30/Routine/ui/widgets/card_routine.dart';
import 'package:day30/User/model/user.dart';
import 'package:day30/exercise/model/exercise.dart';
import 'package:day30/exercise/ui/widgets/exercise_info.dart';

class CloudFirestoreAPI {
  final String USERS = 'users';
  final String ROUTINES = 'routines';
  final String EXERCISES = 'exercises';

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

  List<CardRoutine> buildRoutines(List<DocumentSnapshot> routinesListSnapshot) {
    List<CardRoutine> cardRoutine = List<CardRoutine>();
    routinesListSnapshot.forEach((r) {
      cardRoutine.add(CardRoutine(
        routine: Routine
        (
          name: r.data['name'], 
          nivel: r.data['nivel'], 
          urlImage: r.data['urlImage'],
        ),
      ));
    });
    return cardRoutine;
  }

  List<ExerciseInfo> builExercises(List<DocumentSnapshot> exercisesListSnapshot) {
    
    List<ExerciseInfo> exerciseInfo = List<ExerciseInfo>();
    int c=0;
    exercisesListSnapshot.forEach((e) {
      c=c+1;
      exerciseInfo.add(ExerciseInfo(
        exercise: Exercise(
          name: e.data['name'],
          photoURL: e.data['photoURL'],
          ),
          cont: c,
          total: exercisesListSnapshot.length,
        )
      );
    });
    return exerciseInfo;
  }

}