//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// XYZ Gen Annotations
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

/// An annotation used to generate a model.
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
  /// generated class, e.g. `""`, `"_internal"`, etc.
  ///
  /// Note: The template you use must support this option, such as the
  /// `default_model_template` template.
  final String? inheritanceConstructor;

  /// The case to use for the key strings in the generated class. The options are:
  ///
  /// - `"lower_snake_case"`
  /// - `"UPPER_SNAKE_CASE"`
  /// - `"lower-kebab-case"`
  /// - `"UPPER-KEBAB-CASE"`
  /// - `"camelCase"`
  /// - `"PascalCase"`
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
    this.keyStringCase = "lower_snake_case",
    this.includeId = true,
    this.includeArgs = false,
  });
}
