import 'dart:async';

import 'package:stacked/stacked.dart';

class LoadingIndicatorDelayedModel extends BaseViewModel {
  bool _display = false;
  bool get display => _display;

  Timer? _timer;

  LoadingIndicatorDelayedModel(Duration? duration) {
    if (duration == null) {
      _display = true;
      return;
    }

    _timer = Timer(duration, () {
      _display = true;
      notifyListeners();
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
