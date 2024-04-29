//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// 🇽🇾🇿 & Dev
//
// Licencing details are in the LICENSE file in the root directory.
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

export 'dart:convert' show jsonEncode, jsonDecode;

import 'package:collection/collection.dart' show DeepCollectionEquality;

import '/xyz_gen_annotations.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

/// Abstract class serving as a template for data models.
abstract class Model {
  //
  //
  //

  static const K_ID = 'id';
  static const K_ARGS = 'args';

  //
  //
  //

  /// Returns a new list with duplicate IDs removed from [source].
  static List<Model> removeDuplicateIds(Iterable<Model> source) {
    return removeDuplicateProperties(source, K_ID);
  }

  //
  //
  //

  /// Returns a new list with duplicate properties removed from [source].
  static List<Model> removeDuplicateProperties(
    Iterable<Model> source,
    String propertyK,
  ) {
    final temp = List.of(source);
    final properties = <dynamic>{null};
    temp.removeWhere((m) {
      final json = m.toJson();
      final property = json[propertyK];
      if (properties.contains(property)) {
        return true;
      }
      properties.add(property);
      return false;
    });
    return temp;
  }

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
    return jsonEncode(toJson());
  }

  //
  //
  //

  /// Returns a Json i.e. `Map<String, dynamic>` representation of the Model.
  Map<String, dynamic> toJson({
    dynamic defaultValue,
    bool includeNulls = false,
  }) {
    throw UnimplementedError();
  }

  //
  //
  //

  /// Converts this [Model] to a [GenericModel].
  GenericModel toGenericModel() => GenericModel(data: this.toJson());

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
    final b = a.keys.toList(growable: false)
      ..sort((k1, k2) => k1.compareTo(k2));
    final c = {for (var k in b) k: a[k] as dynamic};
    return c;
  }

  //
  //
  //

  /// Returns a new instance of the Model with all fields set to `null`.
  T empty<T extends Model>() {
    throw UnimplementedError();
  }

  //
  //
  //

  /// Returns a new copy of the Model with the exact same fields.
  T copy<T extends Model>() {
    throw UnimplementedError();
  }

  //
  //
  //

  /// Returns a new copy of the Model with the fields updated from the [other]
  /// Model.
  T copyWith<T extends Model>(
    Model? other,
  ) {
    return this.copy<T>()..updateWith(other);
  }

  //
  //
  //

  /// Returns a new copy of the Model with the fields updated from [otherData].
  T copyWithJson<T extends Model>(
    Map<String, dynamic>? otherData,
  ) {
    if (otherData != null && otherData.isNotEmpty) {
      return this.copy<T>()..updateWithJson(otherData);
    }
    return this.copy<T>();
  }

  //
  //
  //

  /// Updates the fields of the Model with the fields from the [other] Model.
  void updateWith(Model? other) => this.updateWithJson(other?.toJson());

  //
  //
  //

  /// Updates the fields of the Model with the fields from [otherData].
  void updateWithJson(Map<String, dynamic>? otherData) {
    throw UnimplementedError();
  }

  //
  //
  //

  /// The generated identifier for the Model.
  String get modelId;

  //
  //
  //

  /// Converts the current [Model] to a [Uri] that can be used as a distinct
  /// identifier. The model must not be too large to avoid exceeding the
  /// maximum length of a URL.
  Uri toUrl() {
    return Uri(
      path: this.modelId,
      queryParameters: this.toJson().mapValues((v) => v.toString()),
    );
  }

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
  bool equals(Model? other) {
    return const DeepCollectionEquality().equals(other?.toJson(), toJson());
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
