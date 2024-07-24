//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// 🇽🇾🇿 & Dev
//
// Licencing details are in the LICENSE file in the root directory.
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

import '/xyz_gen_annotations.dart';

part '_generate_screen_bindings.g.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

@GenerateModel(
  shouldInherit: true,
  fields: {
    /// Set to `true` to ensure the screen can only be accessed if the current
    /// user is logged in and verified.
    (['isAccessibleOnlyIfLoggedInAndVerified?'], bool),

    /// Set to `true` to ensure the screen can only be accessed if the current
    /// user is logged in (and not necessarily verified).
    (['isAccessibleOnlyIfLoggedIn?'], bool),

    /// Set to `true` to ensure the screen can only be accessed if there are no
    /// currently logged-in users.
    (['isAccessibleOnlyIfLoggedOut?'], bool),

    /// Set to `false` to ensure that the screen is not redirectable.
    (['isRedirectable?'], bool),

    /// The path to the screen, e.g. '/delete_account'.
    (['path?'], String),

    /// Specify a set of internal parameters that the Screen's configuration class can accept.
    (['internalParameters?'], Set<dynamic>),

    /// Specify a set of query parameters that the screen can accept.
    (['queryParameters?'], Set<dynamic>),

    /// Set the title of the screen, e.g. 'Delete Account'.
    (['defaultTitle?'], String),

    /// Specify a valid makeup class for the screen, e.g. `'DefaultScreenMakeup()'`.
    (['makeup?'], String),

    /// The name of the class to generate.
    (['className?'], String),

    /// The key of the screen, e.g. 'delete_account'.
    (['screenKey?'], String),
  },
)
abstract class _GenerateScreenBindings extends Model {
  const _GenerateScreenBindings();
}
