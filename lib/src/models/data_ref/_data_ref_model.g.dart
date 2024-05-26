//.title
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//
// GENERATED BY 🇽🇾🇿 GEN - DO NOT MODIFY BY HAND
// See: https://github.com/robmllze/xyz_gen
//
// ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
//.title~

// ignore_for_file: annotate_overrides
// ignore_for_file: empty_constructor_bodies
// ignore_for_file: invalid_null_aware_operator
// ignore_for_file: overridden_fields
// ignore_for_file: unnecessary_non_null_assertion
// ignore_for_file: unnecessary_null_comparison
// ignore_for_file: unnecessary_this

part of 'data_ref_model.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

class DataRefModel extends _DataRefModel {
  //
  //
  //

  static const K_COLLECTION = 'collection';
  static const K_ID = 'id';

  static const CLASS = 'DataRefModel';

  @override
  String get $class => CLASS;

  List<String>? collection;
  String? id;

  //
  //
  //

  DataRefModel.empty();

  //
  //
  //

  factory DataRefModel({
    List<String>? collection,
    String? id,
  }) {
    return DataRefModel.b(
      collection: collection,
      id: id,
    );
  }

  //
  //
  //

  DataRefModel.b({
    this.collection,
    this.id,
  }) {}

  //
  //
  //

  factory DataRefModel.from(
    Model? other,
  ) {
    try {
      return fromOrNull(other)!;
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  static DataRefModel? fromOrNull(
    Model? other,
  ) {
    return fromJsonOrNull(other?.toJson())!;
  }

  //
  //
  //

  factory DataRefModel.of(
    DataRefModel other,
  ) {
    try {
      return ofOrNull(other)!;
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  static DataRefModel? ofOrNull(
    DataRefModel? other,
  ) {
    return fromJsonOrNull(other?.toJson());
  }

  //
  //
  //

  factory DataRefModel.fromJsonString(
    String source,
  ) {
    try {
      return fromJsonStringOrNull(source)!;
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  static DataRefModel? fromJsonStringOrNull(
    String? source,
  ) {
    try {
      if (source!.isNotEmpty) {
        final decoded = jsonDecode(source);
        return DataRefModel.fromJson(decoded);
      } else {
        return DataRefModel.empty();
      }
    } catch (_) {
      return null;
    }
  }

  //
  //
  //

  factory DataRefModel.fromJson(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return fromJsonOrNull(otherData)!;
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  static DataRefModel? fromJsonOrNull(
    Map<String, dynamic>? otherData,
  ) {
    try {
      return DataRefModel.empty()
        ..$collection = otherData?[K_COLLECTION]
        ..$id = otherData?[K_ID];
    } catch (e) {
      return null;
    }
  }

  //
  //
  //

  factory DataRefModel.fromUri(
    Uri? uri,
  ) {
    try {
      return fromUriOrNull(uri)!;
    } catch (e) {
      assert(false, e);
      rethrow;
    }
  }

  static DataRefModel? fromUriOrNull(
    Uri? uri,
  ) {
    try {
      if (uri != null && uri.path == CLASS) {
        return DataRefModel.fromJson(uri.queryParameters);
      } else {
        return DataRefModel.b();
      }
    } catch (_) {
      return null;
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
        K_COLLECTION: this.$collection,
        K_ID: this.$id,
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
    return DataRefModel.b() as T;
  }

  //
  //
  //

  @override
  T copy<T extends Model>() {
    return (DataRefModel.b()..updateWith(this)) as T;
  }

  //
  //
  //

  @override
  void updateWithJson(
    Map<String, dynamic>? otherData,
  ) {
    if (otherData != null && otherData.isNotEmpty) {
      final other = DataRefModel.fromJson(otherData);
      if (other.collection != null) {
        this.collection = other.collection!;
      }
      if (other.id != null) {
        this.id = other.id!;
      }
    }
  }

  //
  //
  //

  // collection.
  List<String>? get collectionField => this.collection;
  set collectionField(List<String>? v) => this.collection = v;
  @protected
  dynamic get $collection => this
      .collection
      ?.map(
        (p0) => p0?.toString().trim().nullIfEmpty,
      )
      .nonNulls
      .nullIfEmpty
      ?.toList();
  @protected
  set $collection(v) => this.collection = letList(v)
      ?.map(
        (p0) => p0?.toString().trim().nullIfEmpty,
      )
      .nonNulls
      .nullIfEmpty
      ?.toList()
      .cast();

  // id.
  String? get idField => this.id;
  set idField(String? v) => this.id = v;
  @protected
  dynamic get $id => this.id?.toString().trim().nullIfEmpty;
  @protected
  set $id(v) => this.id = v?.toString().trim().nullIfEmpty;
}
