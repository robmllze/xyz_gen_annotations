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
  Map<String, dynamic> get data => this._data;

  //
  //
  //

  const Model([this._data = const {}]);

  const Model.fromJson([
    Map<String, dynamic>? otherData,
  ]) : this._data = otherData ?? const {};

  factory Model.from(BaseModel? other) {
    return Model(other?.toJson() ?? {});
  }

  factory Model.of(Model other) {
    return Model(other.toJson());
  }

  factory Model.fromJsonString(
    String source,
  ) {
    try {
      return fromJsonStringOrNull(source)!;
    } catch (e) {
      assert(false, 'Model.fromJsonString: $e');
      rethrow;
    }
  }

  static Model? fromJsonStringOrNull(
    String? source,
  ) {
    try {
      if (source!.isNotEmpty) {
        final decoded = jsonDecode(source);
        return Model.fromJson(decoded);
      } else {
        return const Model();
      }
    } catch (_) {
      return null;
    }
  }

  //
  //
  //

  @override
  int get hashCode => this.toString().hashCode;

  //
  //
  //

  @override
  bool operator ==(Object other) => this.equals(other);

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
  String get $className => 'Model';
}
