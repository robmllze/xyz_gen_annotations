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

const LOWER_SNAKE_CASE = "LOWER_SNAKE_CASE";
const UPPER_SNAKE_CASE = "UPPER_SNAKE_CASE";
const KEBAB_CASE = "KEBAB_CASE";
const UPPER_KEBAB_CASE = "UPPER_KEBAB_CASE";
const CAMEL_CASE = "CAMEL_CASE";
const PASCAL_CASE = "PASCAL_CASE";
