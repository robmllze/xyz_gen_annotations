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

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class Model extends BaseModel {
  //
  //
  //

  final Map<String, dynamic> _data;

  //
  //
  //

  const Model([this._data = const {}]);

  //
  //
  //

  int get hashCode => this.toString().hashCode;

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
  Map<String, dynamic> toJson({
    defaultValue,
    bool includeNulls = false,
  }) {
    final withNulls = this._data.mapWithDefault(defaultValue);
    return includeNulls ? withNulls : withNulls.nonNulls;
  }

  //
  //
  //

  @override
  Model copyWith(BaseModel? other) {
    return Model(other?.toJson() ?? {});
  }

  //
  //
  //

  @override
  String get $class => 'Model';
}