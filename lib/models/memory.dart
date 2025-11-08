class Memory {
  String _value = "0";

  String get value {
    return _value;
  }

  _allClear() {
    _value = "0";
  }

  void applyCommand(String command) {
    switch (command) {
      case "AC":
        _allClear();
        break;
      default:
        _value += command;
    }
  }
}
