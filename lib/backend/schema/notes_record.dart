import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotesRecord extends FirestoreRecord {
  NotesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "note" field.
  String? _note;
  String get note => _note ?? '';
  bool hasNote() => _note != null;

  // "creationDate" field.
  DateTime? _creationDate;
  DateTime? get creationDate => _creationDate;
  bool hasCreationDate() => _creationDate != null;

  // "noteContent" field.
  String? _noteContent;
  String get noteContent => _noteContent ?? '';
  bool hasNoteContent() => _noteContent != null;

  void _initializeFields() {
    _note = snapshotData['note'] as String?;
    _creationDate = snapshotData['creationDate'] as DateTime?;
    _noteContent = snapshotData['noteContent'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notes');

  static Stream<NotesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotesRecord.fromSnapshot(s));

  static Future<NotesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NotesRecord.fromSnapshot(s));

  static NotesRecord fromSnapshot(DocumentSnapshot snapshot) => NotesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotesRecordData({
  String? note,
  DateTime? creationDate,
  String? noteContent,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'note': note,
      'creationDate': creationDate,
      'noteContent': noteContent,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotesRecordDocumentEquality implements Equality<NotesRecord> {
  const NotesRecordDocumentEquality();

  @override
  bool equals(NotesRecord? e1, NotesRecord? e2) {
    return e1?.note == e2?.note &&
        e1?.creationDate == e2?.creationDate &&
        e1?.noteContent == e2?.noteContent;
  }

  @override
  int hash(NotesRecord? e) =>
      const ListEquality().hash([e?.note, e?.creationDate, e?.noteContent]);

  @override
  bool isValidKey(Object? o) => o is NotesRecord;
}
