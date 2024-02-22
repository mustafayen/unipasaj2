import 'package:easy_localization/easy_localization.dart';

extension StringExtension on String {
  String get translate {
    return this.tr();
  }
}
