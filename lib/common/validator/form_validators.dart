import 'dart:async';

import 'package:easy_localization/easy_localization.dart';

String? requiredValidator(String? value) {
  if (value == null || value.isEmpty) {
    return tr("this_field_is_required");
  }
  return null;
}

String? numberValidator(String? value) {
  if (value == null || value.isEmpty) return tr("this_field_is_required");
  final numericRegex = RegExp(r'^([0-9]\d*)?$');
  if (numericRegex.hasMatch(value)) {
    return null;
  }
  return tr("this_field_must_contain_only_numbers");
}

String? classNameValidator(String? value) {
  if (value == null || value.isEmpty) {
    return tr("class_name_required");
  }
  return null;
}



