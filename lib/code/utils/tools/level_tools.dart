class LevelTools {
  static const double firstLevelExperience = 1500, ratioDeProgresion = 2;

  LevelState _level;
  LevelTools(double experience)
      : _level = LevelState(
          experience: experience,
        );

  LevelState calculate() {
    _level.level = getLevel(_level.experience);
    _level.experienceToNextLevel = getExperienceToNextLevel(_level.level);

    _level.levelProgress = getLevelProgress(
        _level.experience,
        getExperienceToPreviousLevel(_level.level),
        getExperienceToNextLevel(_level.level));

    return _level;
  }

  static int getLevel(double experience) {
    int level = 1;
    double XP = firstLevelExperience;
    for (level; experience > XP; level++) {
      XP = XP + XP * ratioDeProgresion;
    }

    return level;
  }

  double getExperienceToNextLevel(int level) {
    double XP = firstLevelExperience;
    for (int i = 1; i < level; i++) {
      XP = XP + XP * ratioDeProgresion;
    }

    return XP;
  }

  double getLevelProgress(
    double experience,
    double experienceToPreviousLevel,
    double experienceToNextLevel,
  ) =>
      ((experience - experienceToPreviousLevel) /
          (experienceToNextLevel - experienceToPreviousLevel)) *
      100;

  double getExperienceToPreviousLevel(int level) =>
      (level - 1) <= 0 ? 0 : getExperienceToNextLevel(level - 1);
}

class LevelState {
  int level;
  double experience, experienceToNextLevel, levelProgress;

  LevelState(
      {this.level,
      this.levelProgress,
      this.experience,
      this.experienceToNextLevel});
}
