import 'package:shared_preferences/shared_preferences.dart';

part 'tutorial_repository_shared_preferences_impl.dart';

abstract class TutorialRepository {
  Future<void> finishTutorial(String tutorialKey);

  Future<bool> isTheTutorialFinished(String tutorialKey);

  Future<void> resetTutorial(String tutorialKey);
}
