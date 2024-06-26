//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// 🇽🇾🇿 & Dev
//
// Licencing details are in the LICENSE file in the root directory.
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

final class GenerateScreenBindings {
  //
  //
  //

  /// The identifier [GenerateScreenBindings] as a [String] constant.
  static const I_GENERATE_SCREEN_BINDINGS = 'GenerateScreenBindings';

  /// The identifier [isAccessibleOnlyIfLoggedInAndVerified] as a [String] constant.
  static const I_IS_ACCESSIBLE_ONLY_IF_LOGGED_IN_AND_VERIFIED =
      'isAccessibleOnlyIfLoggedInAndVerified';

  /// The identifier [isAccessibleOnlyIfLoggedIn] as a [String] constant.
  static const I_IS_ACCESSIBLE_ONLY_IF_LOGGED_IN = 'isAccessibleOnlyIfLoggedIn';

  /// The identifier [isAccessibleOnlyIfLoggedOut] as a [String] constant.
  static const I_IS_ACCESSIBLE_ONLY_IF_LOGGED_OUT =
      'isAccessibleOnlyIfLoggedOut';

  /// The identifier [isRedirectable] as a [String] constant.
  static const I_IS_REDIRECTABLE = 'isRedirectable';

  /// The identifier [path] as a [String] constant.
  static const I_PATH = 'path';

  /// The identifier [internalParameters] as a [String] constant.
  static const I_INTERNAL_PARAMETERS = 'internalParameters';

  /// The identifier [queryParameters] as a [String] constant.
  static const I_QUERY_PARAMETERS = 'queryParameters';

  /// The identifier [defaultTitle] as a [String] constant.
  static const I_DEFAULT_TITLE = 'defaultTitle';

  /// The identifier [makeup] as a [String] constant.
  static const I_MAKEUP = 'makeup';

  /// The identifier [className] as a [String] constant.
  static const I_CLASS_NAME = 'className';

  /// The identifier [screenKey] as a [String] constant.
  static const I_SCREEN_KEY = 'screenKey';

  //
  //
  //

  /// Set to `true` to ensure the screen can only be accessed if the current
  /// user is logged in and verified.
  final bool isAccessibleOnlyIfLoggedInAndVerified;

  /// Set to `true` to ensure the screen can only be accessed if the current
  /// user is logged in (and not necessarily verified).
  final bool isAccessibleOnlyIfLoggedIn;

  /// Set to `true` to ensure the screen can only be accessed if there are no
  /// currently logged-in users.
  final bool isAccessibleOnlyIfLoggedOut;

  /// Set to `false` to ensure that the screen is not redirectable.
  ///
  /// Example:
  ///
  /// If your screen's route is `/delete_account`, normally you can access it
  /// by typing https://your.app/delete_account in the browser. This will
  /// start the app and redirect to '/delete_account'. This can be disabled
  /// by setting [isRedirectable] to `false`.
  final bool isRedirectable;

  /// The path to the screen, e.g. '/delete_account'.
  final String path;

  /// Specify a set of internal parameters that the Screen's configuration class can accept, e.g. `{'userId': 'String?'}`.
  final Set<Record> internalParameters;

  /// Specify a set of query parameters that the screen can accept, e.g. `{'userId', 'orderId'}`.
  final Set<Record> queryParameters;

  /// Set the title of the screen, e.g. 'Delete Account'.
  final String defaultTitle;

  /// Specify a valid makeup class for the screen, e.g. `'DefaultScreenMakeup()'`.
  final String makeup;

  /// The name of the class to generate.
  final String? className;

  /// The key of the screen, e.g. 'delete_account'.
  final String? screenKey;

  /// Generates boiler-plate code for the annotated screen class to make it
  /// accessible.
  const GenerateScreenBindings({
    this.path = '',
    this.isAccessibleOnlyIfLoggedInAndVerified = false,
    this.isAccessibleOnlyIfLoggedIn = false,
    this.isAccessibleOnlyIfLoggedOut = false,
    this.isRedirectable = false,
    this.internalParameters = const {},
    this.queryParameters = const {},
    this.defaultTitle = '...',
    this.makeup = 'null',
    this.className,
    this.screenKey,
  })  : assert(
          !isAccessibleOnlyIfLoggedInAndVerified || !isAccessibleOnlyIfLoggedIn,
          'Cannot set both `isAccessibleOnlyIfLoggedInAndVerified` and `isAccessibleOnlyIfLoggedIn` to `true`.',
        ),
        assert(
          !isAccessibleOnlyIfLoggedInAndVerified ||
              !isAccessibleOnlyIfLoggedOut,
          'Cannot set both `isAccessibleOnlyIfLoggedInAndVerified` and `isAccessibleOnlyIfLoggedOut` to `true`.',
        ),
        assert(
          !isAccessibleOnlyIfLoggedIn || !isAccessibleOnlyIfLoggedOut,
          'Cannot set both `isAccessibleOnlyIfLoggedIn` and `isAccessibleOnlyIfLoggedOut` to `true`.',
        );

  //
  //
  //

  GenerateScreenBindings copyWith({
    bool? isAccessibleOnlyIfLoggedInAndVerified,
    bool? isAccessibleOnlyIfLoggedIn,
    bool? isAccessibleOnlyIfLoggedOut,
    bool? isRedirectable,
    String? path,
    Set<Record>? internalParameters,
    Set<Record>? queryParameters,
    List<Record>? pathSegments,
    String? navigationControlWidget,
    String? defaultTitle,
    String? makeup,
    String? className,
    String? screenKey,
  }) {
    return GenerateScreenBindings(
      isAccessibleOnlyIfLoggedInAndVerified:
          isAccessibleOnlyIfLoggedInAndVerified ??
              this.isAccessibleOnlyIfLoggedInAndVerified,
      isAccessibleOnlyIfLoggedIn:
          isAccessibleOnlyIfLoggedIn ?? this.isAccessibleOnlyIfLoggedIn,
      isAccessibleOnlyIfLoggedOut:
          isAccessibleOnlyIfLoggedOut ?? this.isAccessibleOnlyIfLoggedOut,
      isRedirectable: isRedirectable ?? this.isRedirectable,
      path: path ?? this.path,
      internalParameters: internalParameters ?? this.internalParameters,
      queryParameters: queryParameters ?? this.queryParameters,
      defaultTitle: defaultTitle ?? this.defaultTitle,
      makeup: makeup ?? this.makeup,
      className: className ?? this.className,
      screenKey: screenKey ?? this.screenKey,
    );
  }
}
