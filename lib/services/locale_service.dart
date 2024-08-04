import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';
import 'package:the_task/app/app.logger.dart';

class LocaleService with ListenableServiceMixin {
  final _logger = getLogger('LocaleService');

  final ReactiveValue<Locale?> _locale = ReactiveValue(null);
  Locale? get locale => _locale.value;

  LocaleService() {
    final observer = _LocaleServiceBindingObserver(
      onLocaleChanged: (locale) {
        _logger.i('onLocaleChange: ${locale?.toLanguageTag()}');
        locale != null ? setLocale(locale) : null;
      },
    );
    WidgetsBinding.instance.addObserver(observer);
  }

  void setLocale(Locale locale) {
    _logger.i('setLocale: ${locale.toLanguageTag()}');
    _locale.value = locale;
  }
}

class _LocaleServiceBindingObserver extends WidgetsBindingObserver {
  final void Function(Locale?) onLocaleChanged;

  _LocaleServiceBindingObserver({
    required this.onLocaleChanged,
  });

  @override
  void didChangeLocales(List<Locale>? locales) {
    super.didChangeLocales(locales);
    onLocaleChanged(locales?.first);
  }
}
