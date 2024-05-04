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
  final String? collectionPath;

  //
  //
  //

  const DataRef({
    this.id,
    this.tableName,
    this.collectionPath,
  });

  //
  //
  //

  /// The document path of the model for databases like Firestore.
  String get docPath => [this.collectionPath, this.id].nonNulls.join('/');

  //
  //
  //

  // The key of the model for databases like DynamoDB.
  String get key => '${this.tableName}/${this.id}';

  //
  //
  //

  DataRef copyWith({
    String? id,
    String? tableName,
    String? collectionPath,
  }) {
    return DataRef(
      id: id ?? this.id,
      tableName: tableName ?? this.tableName,
      collectionPath: collectionPath ?? this.collectionPath,
    );
  }

  //
  //
  //

  @override
  List<Object?> get props => [
        id,
        tableName,
        collectionPath,
      ];

  //
  //
  //

  @override
  String toString() => [collectionPath, tableName, id].nonNulls.join('/');
}
