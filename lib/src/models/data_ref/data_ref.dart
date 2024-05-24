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

part '_data_ref.g.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

@GenerateModel(
  shouldInherit: true,
  fields: {
    ('id?', String),
    ('table_name?', String),
    ('collection?', List<String>),
  },
)
abstract class _DataRef extends Model {}

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

extension DataRefExtension on DataRef {
  /// The collection path of the model for databases like Firestore.
  String? get collectionPath => this.collection?.join('/');

  /// The document path of the model for databases like Firestore.
  String get docPath => this.doc.join('/');

  /// The document path of the model for databases like Firestore.
  List<String> get doc => [...?this.collection, this.id].nonNulls.toList();

  // The key of the model for databases like DynamoDB.
  String get key => [this.tableName, this.id].nonNulls.join('/');

  DataRef combineWith(DataRef other) {
    return DataRef(
      id: this.id,
      tableName: [...?other.collection, this.tableName].nonNulls.join('-'),
      collection: other.doc,
    );
  }
}
