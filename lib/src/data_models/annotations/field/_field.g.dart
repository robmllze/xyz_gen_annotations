//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// GENERATED BY 🇽🇾🇿 GEN - DO NOT MODIFY BY HAND
// See: https://github.com/robmllze/xyz_gen
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

// ignore_for_file: annotate_overrides
// ignore_for_file: empty_constructor_bodies
// ignore_for_file: invalid_null_aware_operator
// ignore_for_file: overridden_fields
// ignore_for_file: unnecessary_non_null_assertion
// ignore_for_file: unnecessary_null_comparison
// ignore_for_file: unnecessary_this

part of 'field.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class Field extends _Field {
  //
  //
  //

  static const CLASS_NAME = 'Field';

  @override
  String get $className => CLASS_NAME;

  final List<String>? fieldPath;
  final dynamic? fieldType;
  final bool? nullable;
  final Field? child;

  //
  //
  //

  const Field({
    this.fieldPath,
    required this.fieldType,
    this.nullable,
    this.child,
  });

  const Field.c2({
    this.fieldPath,
    this.fieldType,
    this.nullable,
    this.child,
  });

  factory Field.c3({
    List<String>? fieldPath,
    dynamic? fieldType,
    bool? nullable,
    Field? child,
  }) {
    assert(fieldType != null);

    return Field(
      fieldPath: fieldPath,
      fieldType: fieldType,
      nullable: nullable,
      child: child,
    );
  }

  factory Field.from(
    BaseModel? other,
  ) {
    try {
      return fromOrNull(other)!;
    } catch (e) {
      assert(false, 'Field.from: $e');
      rethrow;
    }
  }

  static Field? fromOrNull(
    BaseModel? other,
  ) {
    return fromJsonOrNull(other?.toJson())!;
  }

  factory Field.of(
    Field other,
  ) {
    try {
      return ofOrNull(other)!;
    } catch (e) {
      assert(false, 'Field.of: $e');
      rethrow;
    }
  }

  static Field? ofOrNull(
    Field? other,
  ) {
    return fromJsonOrNull(other?.toJson());
  }

  factory Field.fromJsonString(
    String source,
  ) {
    try {
      return fromJsonStringOrNull(source)!;
    } catch (e) {
      assert(false, 'Field.fromJsonString: $e');
      rethrow;
    }
  }

  static Field? fromJsonStringOrNull(
    String? source,
  ) {
    try {
      if (source!.isNotEmpty) {
        final decoded = jsonDecode(source);
        return Field.fromJson(decoded);
      } else {
        return const Field.c2();
      }
    } catch (_) {
      return null;
    }
  }

  factory Field.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return fromJsonOrNull(otherData)!;
    } catch (e) {
      assert(false, 'Field.fromJson: $e');
      rethrow;
    }
  }

  static Field? fromJsonOrNull(
    Map<String, dynamic>? otherData,
  ) {
    try {
      final fieldPath0 = otherData?['fieldPath'];
      final fieldPath = letList(fieldPath0)
          ?.map(
            (p0) => p0?.toString().trim().nullIfEmpty,
          )
          .nonNulls
          .nullIfEmpty
          ?.toList();
      final fieldType0 = otherData?['fieldType'];
      final fieldType = fieldType0;
      final nullable0 = otherData?['nullable'];
      final nullable = letBool(nullable0);
      final child0 = otherData?['child'];
      final child = child0;
      return Field(
        fieldPath: fieldPath,
        fieldType: fieldType,
        nullable: nullable,
        child: child,
      );
    } catch (e) {
      return null;
    }
  }

  factory Field.fromUri(
    Uri? uri,
  ) {
    try {
      return fromUriOrNull(uri)!;
    } catch (e) {
      assert(false, 'Field.fromUri: $e');
      rethrow;
    }
  }

  static Field? fromUriOrNull(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == CLASS_NAME) {
        return Field.fromJson(uri.queryParameters);
      } else {
        return const Field.c2();
      }
    } catch (_) {
      return null;
    }
  }

  //
  //
  //

  @override
  Map<String, dynamic> toJson({
    dynamic defaultValue,
    bool includeNulls = false,
  }) {
    try {
      final fieldPath0 = this
          .fieldPath
          ?.map(
            (p0) => p0?.trim().nullIfEmpty,
          )
          .nonNulls
          .nullIfEmpty
          ?.toList();
      final fieldType0 = this.fieldType;
      final nullable0 = this.nullable;
      final child0 = this.child;
      final withNulls = mergeMapsDeep([
        {
          'fieldPath': fieldPath0,
        },
        {
          'fieldType': fieldType0,
        },
        {
          'nullable': nullable0,
        },
        {
          'child': child0,
        },
      ]).mapWithDefault(defaultValue);
      return includeNulls ? withNulls : withNulls.nonNulls;
    } catch (e) {
      assert(false, 'Field.toJson: $e');
      rethrow;
    }
  }

  //
  //
  //

  @override
  Field copyWith(BaseModel? other) {
    final a = this.toJson();
    final b = other?.toJson();
    final c = {...a, ...?b};
    return Field.fromJson(c);
  }

  //
  //
  //

  // fieldPath.
  List<String>? get fieldPathField => this.fieldPath;

  // fieldType.
  dynamic get fieldTypeField => this.fieldType!;

  // nullable.
  bool? get nullableField => this.nullable;

  // child.
  Field? get childField => this.child;
}

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

final class FieldFieldNames {
  //
  //
  //

  static const fieldPath = 'fieldPath';
  static const fieldType = 'fieldType';
  static const nullable = 'nullable';
  static const child = 'child';

  //
  //
  //

  const FieldFieldNames._();
}
