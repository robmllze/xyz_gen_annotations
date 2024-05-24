//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// 🇽🇾🇿 & Dev
//
// Licencing details are in the LICENSE file in the root directory.
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

import '/_common.dart';

import 'model.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

@Deprecated('User DataModel instead.')
class GenericModel extends Model {
  //
  //
  //

  static const CLASS = 'GenericModel';

  //
  //
  //

  Map<String, dynamic>? data;

  //
  //
  //

  GenericModel({
    this.data,
  });

  //
  //
  //

  GenericModel.unsafe({
    this.data,
  });

  //
  //
  //

  factory GenericModel.from(
    Model? other,
  ) {
    return GenericModel.fromJson(
      other is GenericModel ? other.data : other?.toJson(),
    );
  }

  //
  //
  //

  factory GenericModel.of(
    GenericModel? other,
  ) {
    return GenericModel.fromJson(other?.toJson());
  }

  //
  //
  //

  factory GenericModel.fromJsonString(
    String? source,
  ) {
    try {
      if (source != null && source.isNotEmpty) {
        final decoded = jsonDecode(source);
        return GenericModel.fromJson(decoded);
      } else {
        return GenericModel.unsafe();
      }
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  factory GenericModel.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return GenericModel.unsafe(
        data: otherData
            ?.map(
              (final p0, final p1) => MapEntry(
                p0.toString().trim().nullIfEmpty,
                p1,
              ),
            )
            .nonNulls
            .nullIfEmpty
            ?.cast(),
      );
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  factory GenericModel.fromUri(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == CLASS) {
        return GenericModel.fromJson(uri.queryParameters);
      } else {
        return GenericModel.unsafe();
      }
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  @override
  Map<String, dynamic> toJson({
    dynamic defaultValue,
    bool includeNulls = false,
  }) {
    try {
      final withNulls = <String, dynamic>{
        ...?data
            ?.map(
              (final p0, final p1) => MapEntry(
                p0.toString().trim().nullIfEmpty,
                p1,
              ),
            )
            .nonNulls
            .nullIfEmpty,
      }.mapWithDefault(defaultValue);
      return includeNulls ? withNulls : withNulls.nonNulls;
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  //
  //
  //

  @override
  T empty<T extends Model>() {
    return GenericModel.unsafe() as T;
  }

  //
  //
  //

  @override
  T copy<T extends Model>() {
    return (GenericModel.unsafe()..updateWith(this)) as T;
  }

  //
  //
  //

  @override
  void updateWithJson(
    Map<String, dynamic>? otherData,
  ) {
    if (otherData != null && otherData.isNotEmpty) {
      final other = GenericModel.fromJson(otherData);
      other.data != null ? this.data = other.data : null;
    }
  }

  //
  //
  //

  @override
  String get $class => CLASS;
}
