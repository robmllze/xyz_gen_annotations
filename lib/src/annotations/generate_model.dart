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
  final bool shouldInherit;

  // Specifies the named constructor of the annotated class to be used in the
  // generated class, e.g. `""`, `"_internal"`, etc.
  final String? inheritanceConstructor;

  /// The case to use for the key strings in the generated class. The options are:
  ///
  /// - `"LOWER_SNAKE_CASE"`
  /// - `"UPPER_SNAKE_CASE"`
  /// - `"KEBAB_CASE"`
  /// - `"UPPER_KEBAB_CASE"`
  /// - `"CAMEL_CASE"`
  /// - `"PASCAL_CASE"`
  final String keyStringCase;

  //
  //
  //

  const GenerateModel({
    this.className,
    this.fields,
    this.shouldInherit = false,
    this.inheritanceConstructor,
    this.keyStringCase = "LOWER_SNAKE_CASE",
  });
}
