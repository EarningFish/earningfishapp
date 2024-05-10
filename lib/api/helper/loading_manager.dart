class LoadingManager {
  static final LoadingManager _instance = LoadingManager._internal();

  factory LoadingManager() {
    return _instance;
  }

  LoadingManager._internal();

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  void setLoading(bool value) {
    if (_isLoading != value) {
      _isLoading = value;
      notifyListeners();
    }
  }

  final List<void Function()> _listeners = [];

  void addListener(void Function() listener) {
    _listeners.add(listener);
  }

  void removeListener(void Function() listener) {
    _listeners.remove(listener);
  }

  void notifyListeners() {
    for (final listener in _listeners) {
      listener();
    }
  }
}
