import 'package:wonders/common_libs.dart';

class LocaleSwitcher extends StatelessWidget with GetItMixin {
  LocaleSwitcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locale = watchX((SettingsLogic s) => s.currentLocale);
    Future<void> handleSwapLocale() async {
      final Locale newLocale;
      if (locale == 'en') {
        newLocale = Locale('ko');
      } else if (locale == 'ko') {
        newLocale = Locale('zh');
      } else {
        newLocale = Locale('en');
      }
      await settingsLogic.changeLocale(newLocale);
    }

    return AppBtn.from(text: $strings.localeSwapButton, onPressed: handleSwapLocale, padding: EdgeInsets.all($styles.insets.sm));
  }
}
