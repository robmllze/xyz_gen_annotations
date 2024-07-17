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

part of 'generate_screen_bindings.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class GenerateScreenBindings extends _GenerateScreenBindings {
  //
  //
  //

  static const CLASS_NAME = 'GenerateScreenBindings';

  @override
  String get $className => CLASS_NAME;

  final bool? isAccessibleOnlyIfLoggedInAndVerified;
  final bool? isAccessibleOnlyIfLoggedIn;
  final bool? isAccessibleOnlyIfLoggedOut;
  final bool? isRedirectable;
  final String? path;
  final Set<dynamic>? internalParameters;
  final Set<dynamic>? queryParameters;
  final String? defaultTitle;
  final String? makeup;
  final String? className;
  final String? screenKey;

  //
  //
  //

  const GenerateScreenBindings({
    this.isAccessibleOnlyIfLoggedInAndVerified,
    this.isAccessibleOnlyIfLoggedIn,
    this.isAccessibleOnlyIfLoggedOut,
    this.isRedirectable,
    this.path,
    this.internalParameters,
    this.queryParameters,
    this.defaultTitle,
    this.makeup,
    this.className,
    this.screenKey,
  });

  const GenerateScreenBindings.c2({
    this.isAccessibleOnlyIfLoggedInAndVerified,
    this.isAccessibleOnlyIfLoggedIn,
    this.isAccessibleOnlyIfLoggedOut,
    this.isRedirectable,
    this.path,
    this.internalParameters,
    this.queryParameters,
    this.defaultTitle,
    this.makeup,
    this.className,
    this.screenKey,
  });

  factory GenerateScreenBindings.c3({
    bool? isAccessibleOnlyIfLoggedInAndVerified,
    bool? isAccessibleOnlyIfLoggedIn,
    bool? isAccessibleOnlyIfLoggedOut,
    bool? isRedirectable,
    String? path,
    Set<dynamic>? internalParameters,
    Set<dynamic>? queryParameters,
    String? defaultTitle,
    String? makeup,
    String? className,
    String? screenKey,
  }) {
    return GenerateScreenBindings(
      isAccessibleOnlyIfLoggedInAndVerified:
          isAccessibleOnlyIfLoggedInAndVerified,
      isAccessibleOnlyIfLoggedIn: isAccessibleOnlyIfLoggedIn,
      isAccessibleOnlyIfLoggedOut: isAccessibleOnlyIfLoggedOut,
      isRedirectable: isRedirectable,
      path: path,
      internalParameters: internalParameters,
      queryParameters: queryParameters,
      defaultTitle: defaultTitle,
      makeup: makeup,
      className: className,
      screenKey: screenKey,
    );
  }

  factory GenerateScreenBindings.from(
    BaseModel? other,
  ) {
    try {
      return fromOrNull(other)!;
    } catch (e) {
      assert(false, 'GenerateScreenBindings.from: $e');
      rethrow;
    }
  }

  static GenerateScreenBindings? fromOrNull(
    BaseModel? other,
  ) {
    return fromJsonOrNull(other?.toJson())!;
  }

  factory GenerateScreenBindings.of(
    GenerateScreenBindings other,
  ) {
    try {
      return ofOrNull(other)!;
    } catch (e) {
      assert(false, 'GenerateScreenBindings.of: $e');
      rethrow;
    }
  }

  static GenerateScreenBindings? ofOrNull(
    GenerateScreenBindings? other,
  ) {
    return fromJsonOrNull(other?.toJson());
  }

  factory GenerateScreenBindings.fromJsonString(
    String source,
  ) {
    try {
      return fromJsonStringOrNull(source)!;
    } catch (e) {
      assert(false, 'GenerateScreenBindings.fromJsonString: $e');
      rethrow;
    }
  }

  static GenerateScreenBindings? fromJsonStringOrNull(
    String? source,
  ) {
    try {
      if (source!.isNotEmpty) {
        final decoded = jsonDecode(source);
        return GenerateScreenBindings.fromJson(decoded);
      } else {
        return const GenerateScreenBindings.c2();
      }
    } catch (_) {
      return null;
    }
  }

  factory GenerateScreenBindings.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return fromJsonOrNull(otherData)!;
    } catch (e) {
      assert(false, 'GenerateScreenBindings.fromJson: $e');
      rethrow;
    }
  }

  static GenerateScreenBindings? fromJsonOrNull(
    Map<String, dynamic>? otherData,
  ) {
    try {
      final isAccessibleOnlyIfLoggedInAndVerified0 = otherData?[
          GenerateScreenBindingsFields
              .isAccessibleOnlyIfLoggedInAndVerified.name];
      final isAccessibleOnlyIfLoggedInAndVerified =
          letBool(isAccessibleOnlyIfLoggedInAndVerified0);
      final isAccessibleOnlyIfLoggedIn0 = otherData?[
          GenerateScreenBindingsFields.isAccessibleOnlyIfLoggedIn.name];
      final isAccessibleOnlyIfLoggedIn = letBool(isAccessibleOnlyIfLoggedIn0);
      final isAccessibleOnlyIfLoggedOut0 = otherData?[
          GenerateScreenBindingsFields.isAccessibleOnlyIfLoggedOut.name];
      final isAccessibleOnlyIfLoggedOut = letBool(isAccessibleOnlyIfLoggedOut0);
      final isRedirectable0 =
          otherData?[GenerateScreenBindingsFields.isRedirectable.name];
      final isRedirectable = letBool(isRedirectable0);
      final path0 = otherData?[GenerateScreenBindingsFields.path.name];
      final path = path0?.toString().trim().nullIfEmpty;
      final internalParameters0 =
          otherData?[GenerateScreenBindingsFields.internalParameters.name];
      final internalParameters = letSet(internalParameters0)
          ?.map(
            (p0) => p0,
          )
          .nonNulls
          .nullIfEmpty
          ?.toSet();
      final queryParameters0 =
          otherData?[GenerateScreenBindingsFields.queryParameters.name];
      final queryParameters = letSet(queryParameters0)
          ?.map(
            (p0) => p0,
          )
          .nonNulls
          .nullIfEmpty
          ?.toSet();
      final defaultTitle0 =
          otherData?[GenerateScreenBindingsFields.defaultTitle.name];
      final defaultTitle = defaultTitle0?.toString().trim().nullIfEmpty;
      final makeup0 = otherData?[GenerateScreenBindingsFields.makeup.name];
      final makeup = makeup0?.toString().trim().nullIfEmpty;
      final className0 =
          otherData?[GenerateScreenBindingsFields.className.name];
      final className = className0?.toString().trim().nullIfEmpty;
      final screenKey0 =
          otherData?[GenerateScreenBindingsFields.screenKey.name];
      final screenKey = screenKey0?.toString().trim().nullIfEmpty;
      return GenerateScreenBindings(
        isAccessibleOnlyIfLoggedInAndVerified:
            isAccessibleOnlyIfLoggedInAndVerified,
        isAccessibleOnlyIfLoggedIn: isAccessibleOnlyIfLoggedIn,
        isAccessibleOnlyIfLoggedOut: isAccessibleOnlyIfLoggedOut,
        isRedirectable: isRedirectable,
        path: path,
        internalParameters: internalParameters,
        queryParameters: queryParameters,
        defaultTitle: defaultTitle,
        makeup: makeup,
        className: className,
        screenKey: screenKey,
      );
    } catch (e) {
      return null;
    }
  }

  factory GenerateScreenBindings.fromUri(
    Uri? uri,
  ) {
    try {
      return fromUriOrNull(uri)!;
    } catch (e) {
      assert(false, 'GenerateScreenBindings.fromUri: $e');
      rethrow;
    }
  }

  static GenerateScreenBindings? fromUriOrNull(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == CLASS_NAME) {
        return GenerateScreenBindings.fromJson(uri.queryParameters);
      } else {
        return const GenerateScreenBindings.c2();
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
      final isAccessibleOnlyIfLoggedInAndVerified0 =
          this.isAccessibleOnlyIfLoggedInAndVerified;
      final isAccessibleOnlyIfLoggedIn0 = this.isAccessibleOnlyIfLoggedIn;
      final isAccessibleOnlyIfLoggedOut0 = this.isAccessibleOnlyIfLoggedOut;
      final isRedirectable0 = this.isRedirectable;
      final path0 = this.path?.trim().nullIfEmpty;
      final internalParameters0 = this
          .internalParameters
          ?.map(
            (p0) => p0,
          )
          .nonNulls
          .nullIfEmpty
          ?.toList();
      final queryParameters0 = this
          .queryParameters
          ?.map(
            (p0) => p0,
          )
          .nonNulls
          .nullIfEmpty
          ?.toList();
      final defaultTitle0 = this.defaultTitle?.trim().nullIfEmpty;
      final makeup0 = this.makeup?.trim().nullIfEmpty;
      final className0 = this.className?.trim().nullIfEmpty;
      final screenKey0 = this.screenKey?.trim().nullIfEmpty;
      final withNulls = <String, dynamic>{
        GenerateScreenBindingsFields.isAccessibleOnlyIfLoggedInAndVerified.name:
            isAccessibleOnlyIfLoggedInAndVerified0,
        GenerateScreenBindingsFields.isAccessibleOnlyIfLoggedIn.name:
            isAccessibleOnlyIfLoggedIn0,
        GenerateScreenBindingsFields.isAccessibleOnlyIfLoggedOut.name:
            isAccessibleOnlyIfLoggedOut0,
        GenerateScreenBindingsFields.isRedirectable.name: isRedirectable0,
        GenerateScreenBindingsFields.path.name: path0,
        GenerateScreenBindingsFields.internalParameters.name:
            internalParameters0,
        GenerateScreenBindingsFields.queryParameters.name: queryParameters0,
        GenerateScreenBindingsFields.defaultTitle.name: defaultTitle0,
        GenerateScreenBindingsFields.makeup.name: makeup0,
        GenerateScreenBindingsFields.className.name: className0,
        GenerateScreenBindingsFields.screenKey.name: screenKey0,
      }.mapWithDefault(defaultValue);
      return includeNulls ? withNulls : withNulls.nonNulls;
    } catch (e) {
      assert(false, 'GenerateScreenBindings.toJson: $e');
      rethrow;
    }
  }

  //
  //
  //

  @override
  GenerateScreenBindings copyWith(BaseModel? other) {
    final a = this.toJson();
    final b = other?.toJson();
    final c = {...a, ...?b};
    return GenerateScreenBindings.fromJson(c);
  }

  //
  //
  //

  // isAccessibleOnlyIfLoggedInAndVerified.
  bool? get isAccessibleOnlyIfLoggedInAndVerifiedField =>
      this.isAccessibleOnlyIfLoggedInAndVerified;

  // isAccessibleOnlyIfLoggedIn.
  bool? get isAccessibleOnlyIfLoggedInField => this.isAccessibleOnlyIfLoggedIn;

  // isAccessibleOnlyIfLoggedOut.
  bool? get isAccessibleOnlyIfLoggedOutField =>
      this.isAccessibleOnlyIfLoggedOut;

  // isRedirectable.
  bool? get isRedirectableField => this.isRedirectable;

  // path.
  String? get pathField => this.path;

  // internalParameters.
  Set<dynamic>? get internalParametersField => this.internalParameters;

  // queryParameters.
  Set<dynamic>? get queryParametersField => this.queryParameters;

  // defaultTitle.
  String? get defaultTitleField => this.defaultTitle;

  // makeup.
  String? get makeupField => this.makeup;

  // className.
  String? get classNameField => this.className;

  // screenKey.
  String? get screenKeyField => this.screenKey;
}

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

enum GenerateScreenBindingsFields {
  //
  //
  //

  isAccessibleOnlyIfLoggedInAndVerified(
    const Field(
      fieldName: 'isAccessibleOnlyIfLoggedInAndVerified',
      fieldType: 'bool',
      nullable: true,
    ),
  ),
  isAccessibleOnlyIfLoggedIn(
    const Field(
      fieldName: 'isAccessibleOnlyIfLoggedIn',
      fieldType: 'bool',
      nullable: true,
    ),
  ),
  isAccessibleOnlyIfLoggedOut(
    const Field(
      fieldName: 'isAccessibleOnlyIfLoggedOut',
      fieldType: 'bool',
      nullable: true,
    ),
  ),
  isRedirectable(
    const Field(
      fieldName: 'isRedirectable',
      fieldType: 'bool',
      nullable: true,
    ),
  ),
  path(
    const Field(
      fieldName: 'path',
      fieldType: 'String',
      nullable: true,
    ),
  ),
  internalParameters(
    const Field(
      fieldName: 'internalParameters',
      fieldType: 'Set<dynamic>',
      nullable: true,
    ),
  ),
  queryParameters(
    const Field(
      fieldName: 'queryParameters',
      fieldType: 'Set<dynamic>',
      nullable: true,
    ),
  ),
  defaultTitle(
    const Field(
      fieldName: 'defaultTitle',
      fieldType: 'String',
      nullable: true,
    ),
  ),
  makeup(
    const Field(
      fieldName: 'makeup',
      fieldType: 'String',
      nullable: true,
    ),
  ),
  className(
    const Field(
      fieldName: 'className',
      fieldType: 'String',
      nullable: true,
    ),
  ),
  screenKey(
    const Field(
      fieldName: 'screenKey',
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

  const GenerateScreenBindingsFields(this.field);

  //
  //
  //

  String get name => this.field.fieldName!;
}
