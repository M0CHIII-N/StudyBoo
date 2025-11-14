import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FileNamesRecord extends FirestoreRecord {
  FileNamesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "fileName" field.
  String? _fileName;
  String get fileName => _fileName ?? '';
  bool hasFileName() => _fileName != null;

  // "dateCreated" field.
  DateTime? _dateCreated;
  DateTime? get dateCreated => _dateCreated;
  bool hasDateCreated() => _dateCreated != null;

  // "fileURL" field.
  String? _fileURL;
  String get fileURL => _fileURL ?? '';
  bool hasFileURL() => _fileURL != null;

  void _initializeFields() {
    _fileName = snapshotData['fileName'] as String?;
    _dateCreated = snapshotData['dateCreated'] as DateTime?;
    _fileURL = snapshotData['fileURL'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('fileNames');

  static Stream<FileNamesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FileNamesRecord.fromSnapshot(s));

  static Future<FileNamesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FileNamesRecord.fromSnapshot(s));

  static FileNamesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FileNamesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FileNamesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FileNamesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FileNamesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FileNamesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFileNamesRecordData({
  String? fileName,
  DateTime? dateCreated,
  String? fileURL,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'fileName': fileName,
      'dateCreated': dateCreated,
      'fileURL': fileURL,
    }.withoutNulls,
  );

  return firestoreData;
}

class FileNamesRecordDocumentEquality implements Equality<FileNamesRecord> {
  const FileNamesRecordDocumentEquality();

  @override
  bool equals(FileNamesRecord? e1, FileNamesRecord? e2) {
    return e1?.fileName == e2?.fileName &&
        e1?.dateCreated == e2?.dateCreated &&
        e1?.fileURL == e2?.fileURL;
  }

  @override
  int hash(FileNamesRecord? e) =>
      const ListEquality().hash([e?.fileName, e?.dateCreated, e?.fileURL]);

  @override
  bool isValidKey(Object? o) => o is FileNamesRecord;
}
