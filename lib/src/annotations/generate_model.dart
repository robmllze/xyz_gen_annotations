//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// 🇽🇾🇿 & Dev
//
// Copyright Ⓒ Robert Mollentze, xyzand.dev
//
// Licensing details can be found in the LICENSE file in the root directory.
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

class GenerateModel {
  //
  //
  //

  /// The name of the class to generate.
  final String? className;

  /// The parameters to use when generating the class, e.g. `{'name': 'String?'}`.
  final Map<String, dynamic>? fields;

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

  /// Whether or not to include the default `id` field in the generated class.
  ///
  /// Note: The template you use must support this option, such as the
  /// `default_model_template` template.
  final bool includeId;

  /// Whether or not to include the default `args` field in the generated class.
  ///
  /// Note: The template you use must support this option, such as the
  /// `default_model_template` template.
  final bool includeArgs;

  //
  //
  //

  const GenerateModel({
    this.className,
    this.fields,
    this.shouldInherit = false,
    this.inheritanceConstructor,
    this.keyStringCase = 'LOWER_SNAKE_CASE',
    this.includeId = true,
    this.includeArgs = false,
  });

  //
  //
  //

  GenerateModel copyWith({
    String? className,
    Map<String, dynamic>? fields,
    bool? shouldInherit,
    String? inheritanceConstructor,
    String? keyStringCase,
    bool? includeId,
    bool? includeArgs,
  }) {
    return GenerateModel(
      className: className ?? this.className,
      fields: fields ?? this.fields,
      shouldInherit: shouldInherit ?? this.shouldInherit,
      inheritanceConstructor:
          inheritanceConstructor ?? this.inheritanceConstructor,
      keyStringCase: keyStringCase ?? this.keyStringCase,
      includeId: includeId ?? this.includeId,
      includeArgs: includeArgs ?? this.includeArgs,
    );
  }
}
