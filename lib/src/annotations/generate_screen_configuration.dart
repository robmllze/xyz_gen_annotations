//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// XYZ Gen Annotations
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

class GenerateScreenConfiguration {
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
  /// start the app and redirect to "/delete_account". This can be disabled
  /// by setting [isRedirectable] to `false`.
  final bool isRedirectable;

  /// The path to the screen, e.g. "/delete_account".
  final String path;

  /// Specify a set of internal parameters that the Screen's configuration class can accept, e.g. `{"userId": "String?"}`.
  final Map<String, String> internalParameters;

  /// Specify a set of query parameters that the screen can accept, e.g. `{"userId", "orderId"}`.
  final Set<String> queryParameters;

  @deprecated
  final List<String> pathSegments;

  /// Specify a valid navigation control widget for the screen, e.g. `"BottomNavigationBar()"`.
  final String navigationControlWidget;

  /// Set the title of the screen, e.g. "Delete Account".
  final String defaultTitle;

  /// Specify a valid makeup class for the screen, e.g. `"DefaultScreenMakeup()"`.
  final String makeup;

  /// Generates boiler-plate code for the annotated screen class to make it
  /// accessible.
  const GenerateScreenConfiguration({
    this.path = "",
    this.isAccessibleOnlyIfLoggedInAndVerified = false,
    this.isAccessibleOnlyIfLoggedIn = false,
    this.isAccessibleOnlyIfLoggedOut = false,
    this.isRedirectable = false,
    this.internalParameters = const {},
    this.queryParameters = const {},
    this.pathSegments = const [],
    this.navigationControlWidget = "null",
    this.defaultTitle = "...",
    this.makeup = "null",
  })  : assert(
          !isAccessibleOnlyIfLoggedInAndVerified || !isAccessibleOnlyIfLoggedIn,
          "Cannot set both `isAccessibleOnlyIfLoggedInAndVerified` and `isAccessibleOnlyIfLoggedIn` to `true`.",
        ),
        assert(
          !isAccessibleOnlyIfLoggedInAndVerified || !isAccessibleOnlyIfLoggedOut,
          "Cannot set both `isAccessibleOnlyIfLoggedInAndVerified` and `isAccessibleOnlyIfLoggedOut` to `true`.",
        ),
        assert(
          !isAccessibleOnlyIfLoggedIn || !isAccessibleOnlyIfLoggedOut,
          "Cannot set both `isAccessibleOnlyIfLoggedIn` and `isAccessibleOnlyIfLoggedOut` to `true`.",
        );
}
