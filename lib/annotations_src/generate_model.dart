//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// 🇽🇾🇿 & Dev
//
// Licencing details are in the LICENSE file in the root directory.
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

final class GenerateModel {
  //
  //
  //

  /// The name of the class to generate.
  final String? className;

  /// Fields to use when generating the class, e.g. `('first_name', 'String?')`.
  final Set<Record> fields;

  /// Indicates if the generated class should inherit from the annotated class.
  ///
  /// Note: The template you use must support this option, such as the
  /// `default_model_template` template.
  final bool shouldInherit;

  /// Specifies the named constructor of the annotated class to be used in the
  /// generated class, e.g. `''`, `'_internal'`, etc.
  ///
  /// Note: The template you use must support this option, such as the
  /// `default_model_template` template.
  final String? inheritanceConstructor;

  /// The case to use for the key strings in the generated class.
  ///
  /// The possible values are:
  ///
  /// - `CAMEL_CASE`
  /// - `PASCAL_CASE`
  /// - `LOWER_SNAKE_CASE`
  /// - `UPPER_SNAKE_CASE`
  /// - `LOWER_KEBAB_CASE`
  /// - `UPPER_KEBAB_CASE`
  /// - `LOWER_DOT_CASE`
  /// - `UPPER_DOT_CASE`
  /// - `PATH_CASE`
  final String keyStringCase;

  //
  //
  //

  const GenerateModel({
    this.className,
    this.fields = const {('id', 'String?')},
    this.shouldInherit = false,
    this.inheritanceConstructor,
    this.keyStringCase = 'LOWER_SNAKE_CASE',
  });

  //
  //
  //

  GenerateModel copyWith({
    String? className,
    Set<Record>? fields,
    Set<Record>? defaultFields,
    bool? shouldInherit,
    String? inheritanceConstructor,
    String? keyStringCase,
  }) {
    return GenerateModel(
      className: className ?? this.className,
      fields: fields ?? this.fields,
      shouldInherit: shouldInherit ?? this.shouldInherit,
      inheritanceConstructor: inheritanceConstructor ?? this.inheritanceConstructor,
      keyStringCase: keyStringCase ?? this.keyStringCase,
    );
  }
}

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

/// Identifier names for the [GenerateModel] annotation.
enum GenerateModelIds {
  //
  //
  //

  $class('GenerateModel'),
  className('className'),
  fields('fields'),
  shouldInherit('shouldInherit'),
  inheritanceConstructor('inheritanceConstructor'),
  keyStringCase('keyStringCase');

  //
  //
  //

  final String id;

  //
  //
  //

  const GenerateModelIds(this.id);
}
