//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// 🇽🇾🇿 & Dev
//
// Licencing details are in the LICENSE file in the root directory.
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

import '/xyz_gen_annotations.dart';

part '_field.g.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

@GenerateModel(
  shouldInherit: true,
  fields: {
    /// The name of the field.
    ('fieldPath?', List<String>),

    /// The type of the field, e.g. 'String'.
    ('fieldType?', dynamic),

    /// Whether [fieldType] is nullable or not.
    ('nullable?', bool),
    
    ('child?', 'Model-Field'),
  },
)

/// Represents a field, its name, type, and its nullability. Similar to
/// [TFieldRecord].
abstract class _Field extends BaseModel {
  const _Field();

  /// The type code of the field (the type with any special, characters, such
  /// as 'String?').
  String? get fieldTypeCode => (this as Field).fieldType;

  /// Converts this to a [TFieldRecord].
  TFieldRecord get toRecord => (
        fieldPath: (this as Field).fieldPath,
        fieldType: (this as Field).fieldType,
        nullable: (this as Field).nullable,
      );
}

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

/// A record representing a field. Similar to [Field].
typedef TFieldRecord = ({
  List<String>? fieldPath,
  String? fieldType,
  bool? nullable,
});

extension ToClassOnTFieldRecordExtension on TFieldRecord {
  /// Converts this to a [Field].
  Field get toClass => Field(
        fieldPath: fieldPath,
        fieldType: fieldType,
        nullable: nullable,
      );
}

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

final class FieldUtils {
  FieldUtils._();

  /// Assumes [unknown] is a [TFieldRecord] or [Field] or similar and
  /// tries to construct a [Field], otherwise returns `null`.
  static Field? ofOrNull(dynamic unknown) {
    try {
      final fieldPath = fieldPathOrNull(unknown)!;
      final fieldType = fieldTypeOrNull(unknown) ?? 'dynamic';
      final nullable = nullableOrNull(unknown);
      return Field(
        fieldPath: fieldPath,
        fieldType: fieldType,
        nullable: nullable,
      );
    } catch (_) {
      return null;
    }
  }

  /// Assumes [unknown] is a [TFieldRecord] or [Field] or similar and
  /// tries to get the [fieldPath] property, or returns `null`.
  static List<String>? fieldPathOrNull(dynamic unknown) {
    try {
      return (unknown.fieldPath as List<String>);
    } catch (_) {
      try {
        return unknown.$1 as List<String>;
      } catch (_) {
        return null;
      }
    }
  }

  /// Assumes [unknown] is a [TFieldRecord] or [Field] or similar and
  /// tries to get the [fieldType] property, or returns `null`.
  static String? fieldTypeOrNull(dynamic unknown) {
    try {
      return unknown.fieldType as String;
    } catch (_) {
      try {
        return unknown.$2 as String;
      } catch (e) {
        return null;
      }
    }
  }

  /// Assumes [unknown] is a [TFieldRecord] or [Field] or similar and
  /// tries to get the [nullable] property, or returns `null`.
  static bool? nullableOrNull(dynamic unknown) {
    try {
      return unknown.nullable as bool?;
    } catch (_) {
      try {
        return unknown.$3 as bool?;
      } catch (_) {
        return null;
      }
    }
  }
}
