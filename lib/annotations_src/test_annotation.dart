//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// 🇽🇾🇿 & Dev
//
// Licencing details are in the LICENSE file in the root directory.
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

/// A generic annotation for testing.
final class TestAnnotation {
  //
  //
  //

  /// The identifier [TestAnnotation] as a [String] constant.
  static const I_TEST_ANNOTATION = 'TestAnnotation';

  /// The identifier [options] as a [String] constant.
  static const I_OPTIONS = 'options';

  //
  //
  //

  /// Generic options for the annotation.
  final dynamic options;

  //
  //
  //

  const TestAnnotation([this.options]);
}

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

/// Identifier names for the [Field] annotation.
enum TestAnnotationIds {
  //
  //
  //

  $this('TestAnnotation'),
  options('options');

  //
  //
  //

  final String id;

  //
  //
  //

  const TestAnnotationIds(this.id);
}
