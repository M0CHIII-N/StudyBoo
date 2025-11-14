import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TodoRecord extends FirestoreRecord {
  TodoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "UserID" field.
  String? _userID;
  String get userID => _userID ?? '';
  bool hasUserID() => _userID != null;

  // "DateCreated" field.
  DateTime? _dateCreated;
  DateTime? get dateCreated => _dateCreated;
  bool hasDateCreated() => _dateCreated != null;

  // "TodoName" field.
  String? _todoName;
  String get todoName => _todoName ?? '';
  bool hasTodoName() => _todoName != null;

  // "TodoDesc" field.
  String? _todoDesc;
  String get todoDesc => _todoDesc ?? '';
  bool hasTodoDesc() => _todoDesc != null;

  void _initializeFields() {
    _userID = snapshotData['UserID'] as String?;
    _dateCreated = snapshotData['DateCreated'] as DateTime?;
    _todoName = snapshotData['TodoName'] as String?;
    _todoDesc = snapshotData['TodoDesc'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Todo');

  static Stream<TodoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TodoRecord.fromSnapshot(s));

  static Future<TodoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TodoRecord.fromSnapshot(s));

  static TodoRecord fromSnapshot(DocumentSnapshot snapshot) => TodoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TodoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TodoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TodoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TodoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTodoRecordData({
  String? userID,
  DateTime? dateCreated,
  String? todoName,
  String? todoDesc,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'UserID': userID,
      'DateCreated': dateCreated,
      'TodoName': todoName,
      'TodoDesc': todoDesc,
    }.withoutNulls,
  );

  return firestoreData;
}

class TodoRecordDocumentEquality implements Equality<TodoRecord> {
  const TodoRecordDocumentEquality();

  @override
  bool equals(TodoRecord? e1, TodoRecord? e2) {
    return e1?.userID == e2?.userID &&
        e1?.dateCreated == e2?.dateCreated &&
        e1?.todoName == e2?.todoName &&
        e1?.todoDesc == e2?.todoDesc;
  }

  @override
  int hash(TodoRecord? e) => const ListEquality()
      .hash([e?.userID, e?.dateCreated, e?.todoName, e?.todoDesc]);

  @override
  bool isValidKey(Object? o) => o is TodoRecord;
}
