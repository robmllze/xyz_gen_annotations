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

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

/// A database agnostic reference to a model, table or collection.
class DataRef extends Equatable {
  //
  //
  //

  /// The id/primary key of the model.
  final String? id;

  /// The table name of the model for databases like DynamoDB.
  final String? tableName;

  /// The collection path of the model for databases like Firestore.
  final List<String>? collection;

  //
  //
  //

  const DataRef({
    this.id,
    this.tableName,
    this.collection,
  });

  //
  //
  //

  /// The collection path of the model for databases like Firestore.
  String? get collectionPath => this.collection?.join('/');

  //
  //
  //

  /// The document path of the model for databases like Firestore.
  String get docPath => this.doc.join('/');

  /// The document path of the model for databases like Firestore.
  List<String> get doc => [...?this.collection, this.id].nonNulls.toList();

  //
  //
  //

  // The key of the model for databases like DynamoDB.
  String get key => [this.tableName, this.id].nonNulls.join('/');

  //
  //
  //

  DataRef copyWith({
    String? id,
    String? tableName,
    List<String>? collection,
  }) {
    return DataRef(
      id: id ?? this.id,
      tableName: tableName ?? this.tableName,
      collection: collection ?? this.collection,
    );
  }

  //
  //
  //

  DataRef combineWith(DataRef other) {
    return DataRef(
      id: this.id,
      tableName: [...?other.collection, this.tableName].nonNulls.join('-'),
      collection: other.doc,
    );
  }

  //
  //
  //

  @override
  List<Object?> get props => [
        this.id,
        this.tableName,
        ...?this.collection,
      ];

  //
  //
  //

  @override
  String toString() => this.props.nonNulls.join('/');
}
