// //.title
// // ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
// //
// // 🇽🇾🇿 & Dev
// //
// // Licencing details are in the LICENSE file in the root directory.
// //
// // ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
// //.title~

// /// Represents a field, its name, type, and its nullability. Similar to
// /// [TFieldRecord].
// class Field {
//   //
//   //
//   //

//   /// The name of the field.
//   final String? fieldName;

//   /// The type of the field, e.g. 'String'.
//   final String? fieldType;

//   /// The type code of the field (the type with any special, characters, such
//   /// as 'String?').
//   String? get fieldTypeCode => this.fieldType;

//   /// Whether [fieldType] is nullable or not.
//   final bool? nullable;

//   //
//   //
//   //

//   const Field({
//     this.fieldName,
//     this.fieldType,
//     this.nullable,
//   });

//   /// Derives an instance [Field] from [source].
//   factory Field.from(Field source) {
//     return Field(
//       fieldName: source.fieldName,
//       fieldType: source.fieldType,
//       nullable: source.nullable,
//     );
//   }

//   /// Derives an instance [Field] from [record].
//   factory Field.fromRecord(TFieldRecord record) {
//     return Field(
//       fieldName: record.fieldName,
//       fieldType: record.fieldType,
//       nullable: record.nullable,
//     );
//   }

//   //
//   //
//   //

//   /// Converts this to a [TFieldRecord].
//   TFieldRecord get toRecord => (
//         fieldName: this.fieldName,
//         fieldType: this.fieldType,
//         nullable: this.nullable,
//       );

//   //
//   //
//   //


// }

// // ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

// /// A record representing a field. Similar to [Field].
// typedef TFieldRecord = ({
//   String? fieldName,
//   String? fieldType,
//   bool? nullable,
// });

// extension ToClassOnTFieldRecordExtension on TFieldRecord {
//   /// Converts this to a [Field].
//   Field get toClass => Field(
//         fieldName: fieldName,
//         fieldType: fieldType,
//         nullable: nullable,
//       );
// }

// /// Identifier names for the [IField] type.
// enum IField {
//   //
//   //
//   //

//   $this('Field'),
//   fieldName('fieldName'),
//   fieldType('fieldType'),
//   nullable('nullable');

//   //
//   //
//   //

//   final String id;

//   //
//   //
//   //

//   const IField(this.id);
// }
