class Recipe{
  late int _cows;
  late int _trampolines;

  Recipe(this._cows, this._trampolines);

  int get milkShake => _cows + _trampolines;
}