//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// 🇽🇾🇿 & Dev
//
// Licencing details are in the LICENSE file in the root directory.
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

import 'package:meta/meta.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

@visibleForTesting
class GenerateMakeups {
  //
  //
  //

  final Set<String> variants;
  final Map<String, String> properties;

  //
  //
  //

  const GenerateMakeups({
    this.variants = const {},
    this.properties = const {},
  });
}

// NEXT NEXT NEXT:

// class GenerateMakeups {
//   //
//   //
//   //

//   final Set<String> variants;
//   final Set<Record> properties;

//   //
//   //
//   //

//   const GenerateMakeups({
//     this.variants = const {},
//     this.properties = const {},
//   });

//   //
//   //
//   //

//   GenerateMakeups copyWith({
//     Set<String>? variants,
//     Set<Record>? properties,
//   }) {
//     return GenerateMakeups(
//       variants: variants ?? this.variants,
//       properties: properties ?? this.properties,
//     );
//   }
// }
