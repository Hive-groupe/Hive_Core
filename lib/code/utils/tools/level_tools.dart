class LevelTools {
  static const double firstLevelExperience = 1500, ratioDeProgresion = 2;

  LevelState _level;
  LevelTools(double experience)
      : _level = LevelState(
          experience: experience,
        );

  LevelState calculate() {
    _level.level = getLevel(_level.experience ?? 0);
    _level.experienceToNextLevel = getExperienceToNextLevel(_level.level ?? 0);

    _level.levelProgress = getLevelProgress(
      _level.experience ?? 0,
      getExperienceToPreviousLevel(_level.level ?? 0),
      getExperienceToNextLevel(_level.level ?? 0),
    );

    return _level;
  }

  static int getLevel(double experience) {
    int level = 1;
    double xp = firstLevelExperience;
    for (level; experience > xp; level++) {
      xp = xp + xp * ratioDeProgresion;
    }

    return level;
  }

  double getExperienceToNextLevel(int level) {
    double xp = firstLevelExperience;
    for (int i = 1; i < level; i++) {
      xp = xp + xp * ratioDeProgresion;
    }

    return xp;
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
  int? level;
  double? experience, experienceToNextLevel, levelProgress;

  LevelState({
    this.level,
    this.levelProgress,
    this.experience,
    this.experienceToNextLevel,
  });
}
