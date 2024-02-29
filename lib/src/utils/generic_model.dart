//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// X|Y|Z & Dev
//
// Copyright Ⓒ Robert Mollentze, xyzand.dev
//
// Licensing details can be found in the LICENSE file in the root directory.
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

import 'package:xyz_utils/xyz_utils.dart';

import 'model.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

/// A flexible model class that extends the abstract [Model], capable of
/// representing any structured data.
class GenericModel extends Model {
  //
  //
  //

  final Map<String, dynamic>? data;

  //
  //
  //

  GenericModel([this.data]);

  //
  //
  //

  @override
  Map<String, dynamic> toJson({
    dynamic defaultValue,
    bool includeNulls = false,
  }) {
    final temp = {...?this.data}..mapWithDefault(defaultValue);
    return includeNulls ? temp : temp.nonNulls;
  }

  //
  //
  //

  @override
  T empty<T extends Model>() => GenericModel({}) as T;

  //
  //
  //

  @override
  T copy<T extends Model>() => this as T;

  //
  //
  //

  @override
  T copyWith<T extends Model>(Model? other) {
    return this.copyWithJson(other?.toJson());
  }

  //
  //
  //

  @override
  T copyWithJson<T extends Model>(
    Map<String, dynamic>? otherData,
  ) {
    return GenericModel({
      ...?this.data,
      ...?otherData,
    }) as T;
  }

  //
  //
  //

  @override
  void updateWithJson(
    Map<String, dynamic>? otherData,
  ) {
    if (otherData != null) {
      this.data?.addAll(otherData);
    }
  }
}
