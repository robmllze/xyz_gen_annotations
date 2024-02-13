//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// XYZ Gen Annotations
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

import 'package:xyz_utils/shared/all_shared.g.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

enum StringCaseType {
  LOWER_SNAKE_CASE,
  UPPER_SNAKE_CASE,
  LOWER_KEBAB_CASE,
  UPPER_KEBAB_CASE,
  CAMEL_CASE,
  PASCAL_CASE,
  LOWER_DOT_CASE,
  UPPER_DOT_CASE,
  URI_PATH_CASE,
}

StringCaseType? nameToStringCaseType(String? name) {
  if (name != null) {
    for (final a in StringCaseType.values) {
      if (name.trim().toLowerCase() == a.name.toLowerCase()) {
        return a;
      }
    }
  }
  return null;
}

const LOWER_SNAKE_CASE = "lower_snake_case";
const UPPER_SNAKE_CASE = "UPPER_SNAKE_CASE";
const LOWER_KEBAB_CASE = "lower-kebab-case";
const UPPER_KEBAB_CASE = "UPPER-KEBAB-CASE";
const CAMEL_CASE = "camelCase";
const PASCAL_CASE = "PascalCase";
const LOWER_DOT_CASE = "lower.dot.case";
const UPPER_DOT_CASE = "UPPER.DOT.CASE";
const URI_PATH_CASE = "uri/path/case";

String convertToStringCaseType(
  String value,
  StringCaseType? stringCaseType,
) {
  switch (stringCaseType) {
    case StringCaseType.LOWER_SNAKE_CASE:
      return value.toLowerSnakeCase();
    case StringCaseType.UPPER_SNAKE_CASE:
      return value.toUpperSnakeCase();
    case StringCaseType.LOWER_KEBAB_CASE:
      return value.toLowerKebabCase();
    case StringCaseType.UPPER_KEBAB_CASE:
      return value.toUpperKebabCase();
    case StringCaseType.CAMEL_CASE:
      return value.toCamelCase();
    case StringCaseType.PASCAL_CASE:
      return value.toPascalCase();
    case StringCaseType.LOWER_DOT_CASE:
      return value.toLowerDotCase();
    case StringCaseType.UPPER_DOT_CASE:
      return value.toUpperDotCase();
    case StringCaseType.URI_PATH_CASE:
      return value.toUriPathCase();
    default:
      return value;
  }
}

extension ConvertStringToStringCaseType on StringCaseType {
  String convertString(String value) {
    return convertToStringCaseType(value, this);
  }
}
