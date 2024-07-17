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

part of 'generate_model.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class GenerateModel extends _GenerateModel {
  //
  //
  //

  static const K_CLASS_NAME = 'className';
  static const K_FIELDS = 'fields';
  static const K_SHOULD_INHERIT = 'shouldInherit';
  static const K_INHERITANCE_CONSTRUCTOR = 'inheritanceConstructor';
  static const K_KEY_STRING_CASE = 'keyStringCase';

  static const CLASS = 'GenerateModel';

  @override
  String get $class => CLASS;

  final String? className;
  final Set<dynamic>? fields;
  final bool? shouldInherit;
  final String? inheritanceConstructor;
  final String? keyStringCase;

  //
  //
  //

  const GenerateModel({
    this.className,
    this.fields,
    this.shouldInherit,
    this.inheritanceConstructor,
    this.keyStringCase,
  });

  //
  //
  //

  factory GenerateModel.b({
    String? className,
    Set<dynamic>? fields,
    bool? shouldInherit,
    String? inheritanceConstructor,
    String? keyStringCase,
  }) {
    return GenerateModel(
      className: className,
      fields: fields,
      shouldInherit: shouldInherit,
      inheritanceConstructor: inheritanceConstructor,
      keyStringCase: keyStringCase,
    );
  }

  //
  //
  //

  factory GenerateModel.from(
    BaseModel? other,
  ) {
    try {
      return fromOrNull(other)!;
    } catch (e) {
      assert(false, 'GenerateModel.from: $e');
      rethrow;
    }
  }

  static GenerateModel? fromOrNull(
    BaseModel? other,
  ) {
    return fromJsonOrNull(other?.toJson())!;
  }

  //
  //
  //

  factory GenerateModel.of(
    GenerateModel other,
  ) {
    try {
      return ofOrNull(other)!;
    } catch (e) {
      assert(false, 'GenerateModel.of: $e');
      rethrow;
    }
  }

  static GenerateModel? ofOrNull(
    GenerateModel? other,
  ) {
    return fromJsonOrNull(other?.toJson());
  }

  //
  //
  //

  factory GenerateModel.fromJsonString(
    String source,
  ) {
    try {
      return fromJsonStringOrNull(source)!;
    } catch (e) {
      assert(false, 'GenerateModel.fromJsonString: $e');
      rethrow;
    }
  }

  static GenerateModel? fromJsonStringOrNull(
    String? source,
  ) {
    try {
      if (source!.isNotEmpty) {
        final decoded = jsonDecode(source);
        return GenerateModel.fromJson(decoded);
      } else {
        return GenerateModel.b();
      }
    } catch (_) {
      return null;
    }
  }

  //
  //
  //

  factory GenerateModel.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return fromJsonOrNull(otherData)!;
    } catch (e) {
      assert(false, 'GenerateModel.fromJson: $e');
      rethrow;
    }
  }

  static GenerateModel? fromJsonOrNull(
    Map<String, dynamic>? otherData,
  ) {
    try {
      final className0 = otherData?[K_CLASS_NAME];
      final className = className0?.toString().trim().nullIfEmpty;
      final fields0 = otherData?[K_FIELDS];
      final fields = letSet(fields0)
          ?.map(
            (p0) => p0,
          )
          .nonNulls
          .nullIfEmpty
          ?.toSet();
      final shouldInherit0 = otherData?[K_SHOULD_INHERIT];
      final shouldInherit = letBool(shouldInherit0);
      final inheritanceConstructor0 = otherData?[K_INHERITANCE_CONSTRUCTOR];
      final inheritanceConstructor =
          inheritanceConstructor0?.toString().trim().nullIfEmpty;
      final keyStringCase0 = otherData?[K_KEY_STRING_CASE];
      final keyStringCase = keyStringCase0?.toString().trim().nullIfEmpty;
      return GenerateModel(
        className: className,
        fields: fields,
        shouldInherit: shouldInherit,
        inheritanceConstructor: inheritanceConstructor,
        keyStringCase: keyStringCase,
      );
    } catch (e) {
      return null;
    }
  }

  //
  //
  //

  factory GenerateModel.fromUri(
    Uri? uri,
  ) {
    try {
      return fromUriOrNull(uri)!;
    } catch (e) {
      assert(false, 'GenerateModel.fromUri: $e');
      rethrow;
    }
  }

  static GenerateModel? fromUriOrNull(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == CLASS) {
        return GenerateModel.fromJson(uri.queryParameters);
      } else {
        return GenerateModel.b();
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
      final className0 = this.className?.trim().nullIfEmpty;
      final fields0 = this
          .fields
          ?.map(
            (p0) => p0,
          )
          .nonNulls
          .nullIfEmpty
          ?.toList();
      final shouldInherit0 = this.shouldInherit;
      final inheritanceConstructor0 =
          this.inheritanceConstructor?.trim().nullIfEmpty;
      final keyStringCase0 = this.keyStringCase?.trim().nullIfEmpty;
      final withNulls = <String, dynamic>{
        K_CLASS_NAME: className0,
        K_FIELDS: fields0,
        K_SHOULD_INHERIT: shouldInherit0,
        K_INHERITANCE_CONSTRUCTOR: inheritanceConstructor0,
        K_KEY_STRING_CASE: keyStringCase0,
      }.mapWithDefault(defaultValue);
      return includeNulls ? withNulls : withNulls.nonNulls;
    } catch (e) {
      assert(false, 'GenerateModel.toJson: $e');
      rethrow;
    }
  }

  //
  //
  //

  @override
  GenerateModel copyWith(BaseModel? other) {
    final a = this.toJson();
    final b = other?.toJson();
    final c = {...a, ...?b};
    return GenerateModel.fromJson(c);
  }

  //
  //
  //

  // className.
  String? get classNameField => this.className;

  // fields.
  Set<dynamic>? get fieldsField => this.fields;

  // shouldInherit.
  bool? get shouldInheritField => this.shouldInherit;

  // inheritanceConstructor.
  String? get inheritanceConstructorField => this.inheritanceConstructor;

  // keyStringCase.
  String? get keyStringCaseField => this.keyStringCase;
}

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

enum GenerateModelFields {
  //
  //
  //

  className(
    const Field(
      fieldName: 'className',
      fieldType: 'String',
      nullable: true,
    ),
  ),
  fields(
    const Field(
      fieldName: 'fields',
      fieldType: 'Set<dynamic>',
      nullable: true,
    ),
  ),
  shouldInherit(
    const Field(
      fieldName: 'shouldInherit',
      fieldType: 'bool',
      nullable: true,
    ),
  ),
  inheritanceConstructor(
    const Field(
      fieldName: 'inheritanceConstructor',
      fieldType: 'String',
      nullable: true,
    ),
  ),
  keyStringCase(
    const Field(
      fieldName: 'keyStringCase',
      fieldType: 'String',
      nullable: true,
    ),
  );

  //
  //
  //

  final Field field;

  //
  //
  //

  const GenerateModelFields(this.field);
}
