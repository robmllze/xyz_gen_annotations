//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// XYZ Gen Annotations
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
  T copyWith<T extends Model>(T? a) => this.copyWithJson(a?.toJson());

  //
  //
  //

  @override
  T copyWithJson<T extends Model>(Map<String, dynamic>? a) =>
      GenericModel({...?this.data, ...?a}) as T;

  //
  //
  //

  @override
  void updateWithJson(Map<String, dynamic>? a) {
    if (a != null) {
      this.data?.addAll(a);
    }
  }
}
