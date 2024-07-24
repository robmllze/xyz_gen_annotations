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

part '_data_ref_model.g.dart';

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

@GenerateModel(
  shouldInherit: true,
  fields: {
    ('id?', String),
    ('collection?', List<String>),
  },
)
abstract class _DataRefModel extends Model {
  const _DataRefModel();
}

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

extension DataRefModelExtension on DataRefModel {
  /// The collection path of the model for databases like Firestore.
  String? get collectionPath => this.collection?.join('/');

  /// The document path of the model for databases like Firestore.
  String get docPath => this.doc.join('/');

  /// The document path of the model.
  List<String> get doc => [...?this.collection, this.id].nonNulls.toList();

  /// Adds two [DataRefModel] objects.
  DataRefModel operator +(DataRefModel other) {
    final temp = [...this.doc, ...other.doc];
    if (temp.isNotEmpty) {
      final length = temp.length;
      if (length.isEven) {
        final collection = temp.sublist(0, length - 1);
        final id = temp.last;
        return DataRefModel(
          id: id,
          collection: collection,
        );
      } else {
        final collection = temp;
        return DataRefModel(
          id: null,
          collection: collection,
        );
      }
    } else {
      return const DataRefModel();
    }
  }
}

// ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

typedef DataRef = DataRefModel;
