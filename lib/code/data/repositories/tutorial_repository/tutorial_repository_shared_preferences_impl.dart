part of 'tutorial_repository.dart';

class TutorialRepositorySharedPreferencesImp implements TutorialRepository {
  static const String _finishedTutoriaKey = '_finishedTutoriaCode';

  @override
  Future<void> finishTutorial(
    String tutorialKey,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> _currentFinishedTutoriaList = await currentFinishedTutoriaList;

    if (!_currentFinishedTutoriaList.contains(tutorialKey)) {
      // Add tutorial key
      _currentFinishedTutoriaList.add(tutorialKey);

      // Save new finished tutorial list
      await prefs.setStringList(
          _finishedTutoriaKey, _currentFinishedTutoriaList);
    }
  }

  @override
  Future<bool> isTheTutorialFinished(
    String tutorialKey,
  ) async {
    List<String> _currentFinishedTutoriaList = await currentFinishedTutoriaList;

    return _currentFinishedTutoriaList.contains(tutorialKey);
  }

  @override
  Future<void> resetTutorial(
    String tutorialKey,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> _currentFinishedTutoriaList = await currentFinishedTutoriaList;

    if (_currentFinishedTutoriaList.contains(tutorialKey)) {
      // Remove tutorial key
      _currentFinishedTutoriaList.remove(tutorialKey);

      // Save new finished tutorial list
      await prefs.setStringList(
          _finishedTutoriaKey, _currentFinishedTutoriaList);
    }
  }

  Future<List<String>> get currentFinishedTutoriaList async {
    final prefs = await SharedPreferences.getInstance();

    List<String> _currentFinishedTutoriaList =
        prefs.getStringList(_finishedTutoriaKey) ?? [];

    return _currentFinishedTutoriaList;
  }
}
