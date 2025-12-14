import 'package:get/get.dart';
import 'package:learning_getx/mvc_partern/localizations/languages/chinese.dart';
import 'package:learning_getx/mvc_partern/localizations/languages/english.dart';
import 'package:learning_getx/mvc_partern/localizations/languages/khmer.dart';

class AppLocalizationController extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {"en": en, "kh": kh, "zh": zh};
}
