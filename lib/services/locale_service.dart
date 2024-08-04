import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';

class LocaleService with ListenableServiceMixin {
  final ReactiveValue<Locale?> _locale = ReactiveValue(null);
  Locale? get locale => _locale.value;

  LocaleService() {
    final observer = _LocaleServiceBindingObserver(
      onLocaleChanged: (locale) => locale != null ? setLocale(locale) : null,
    );
    WidgetsBinding.instance.addObserver(observer);
  }

  void setLocale(Locale locale) => _locale.value = locale;
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
