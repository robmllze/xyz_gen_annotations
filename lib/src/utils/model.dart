//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// XYZ Gen Annotations
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

import 'dart:convert';
export 'dart:convert';

import 'package:collection/collection.dart' show DeepCollectionEquality;

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

/// Abstract class serving as a template for data models.
abstract class Model {
  //
  //
  //

  /// An optional unique identifier for the Model.
  String? id;

  /// A flexible field for additional arguments or data.
  dynamic args;

  //
  //
  //

  /// Returns a JSON string representation of the Model.
  String toJsonString() {
    return json.encode(toJson());
  }

  //
  //
  //

  /// Returns a Json i.e. `Map<String, dynamic>` representation of the Model.
  Map<String, dynamic> toJson({
    dynamic defaultValue,
    bool includeNulls = false,
  });

  //
  //
  //

  /// Returns a Json i.e. `Map<String, dynamic>` representation of the Model,
  /// with the keys sorted alphabetically.
  Map<String, dynamic> sortedJson({
    dynamic defaultValue,
    bool includeNulls = false,
  }) {
    final a = toJson(defaultValue: defaultValue, includeNulls: includeNulls);
    final b = a.keys.toList(growable: false)..sort((k1, k2) => k1.compareTo(k2));
    final c = {for (var k in b) k: a[k] as dynamic};
    return c;
  }

  //
  //
  //

  /// Returns a new instance of the Model with all fields set to `null`.
  T empty<T extends Model>();

  //
  //
  //

  /// Returns a new copy of the Model with the exact same fields.
  T copy<T extends Model>();

  //
  //
  //

  /// Returns a new copy of the Model with the fields updated from the other Model.
  T copyWith<T extends Model>(T other);

  //
  //
  //

  /// Returns a new copy of the Model with the fields updated from the [other]
  /// Json.
  T copyWithJson<T extends Model>(Map<String, dynamic> other);

  //
  //
  //

  /// Updates the fields of the Model with the fields from the [other] Model.
  void updateWith<T extends Model>(T other);

  //
  //
  //

  /// Updates the fields of the Model with the fields from the [other] Json.
  void updateWithJson<T extends Model>(Map<String, dynamic> other);

  //
  //
  //

  @override
  String toString() => toJson().toString();

  //
  //
  //

  /// Compares the Model with another Model using the `DeepCollectionEquality`
  /// and returns `true` if they are equal.
  bool equals<T extends Model>(T other) {
    return const DeepCollectionEquality().equals(toJson(), other.toJson());
  }

  //
  //
  //

  @override
  bool operator ==(Object other) {
    if (other is! Model) {
      return false;
    }
    if (other.runtimeType != runtimeType) {
      return false;
    }
    return equals(other);
  }

  //
  //
  //

  @override
  int get hashCode => sortedJson().toString().hashCode;
}
