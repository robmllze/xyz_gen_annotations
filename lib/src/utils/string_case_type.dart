//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// XYZ Gen Annotations
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

enum StringCaseType {
  LOWER_SNAKE_CASE,
  UPPER_SNAKE_CASE,
  KEBAB_CASE,
  UPPER_KEBAB_CASE,
  CAMEL_CASE,
  PASCAL_CASE,
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
const LOWER_KEBAB_CASE = "kebab-case";
const UPPER_KEBAB_CASE = "UPPER-KEBAB-CASE";
const CAMEL_CASE = "camelCase";
const PASCAL_CASE = "PascalCase";
