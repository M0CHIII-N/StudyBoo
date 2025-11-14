import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventsRecord extends FirestoreRecord {
  EventsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "EventName" field.
  String? _eventName;
  String get eventName => _eventName ?? '';
  bool hasEventName() => _eventName != null;

  // "Time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "User" field.
  String? _user;
  String get user => _user ?? '';
  bool hasUser() => _user != null;

  // "PrioLevel" field.
  double? _prioLevel;
  double get prioLevel => _prioLevel ?? 0.0;
  bool hasPrioLevel() => _prioLevel != null;

  // "timeCreated" field.
  DateTime? _timeCreated;
  DateTime? get timeCreated => _timeCreated;
  bool hasTimeCreated() => _timeCreated != null;

  void _initializeFields() {
    _eventName = snapshotData['EventName'] as String?;
    _time = snapshotData['Time'] as DateTime?;
    _user = snapshotData['User'] as String?;
    _prioLevel = castToType<double>(snapshotData['PrioLevel']);
    _timeCreated = snapshotData['timeCreated'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Events');

  static Stream<EventsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventsRecord.fromSnapshot(s));

  static Future<EventsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EventsRecord.fromSnapshot(s));

  static EventsRecord fromSnapshot(DocumentSnapshot snapshot) => EventsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventsRecordData({
  String? eventName,
  DateTime? time,
  String? user,
  double? prioLevel,
  DateTime? timeCreated,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'EventName': eventName,
      'Time': time,
      'User': user,
      'PrioLevel': prioLevel,
      'timeCreated': timeCreated,
    }.withoutNulls,
  );

  return firestoreData;
}

class EventsRecordDocumentEquality implements Equality<EventsRecord> {
  const EventsRecordDocumentEquality();

  @override
  bool equals(EventsRecord? e1, EventsRecord? e2) {
    return e1?.eventName == e2?.eventName &&
        e1?.time == e2?.time &&
        e1?.user == e2?.user &&
        e1?.prioLevel == e2?.prioLevel &&
        e1?.timeCreated == e2?.timeCreated;
  }

  @override
  int hash(EventsRecord? e) => const ListEquality()
      .hash([e?.eventName, e?.time, e?.user, e?.prioLevel, e?.timeCreated]);

  @override
  bool isValidKey(Object? o) => o is EventsRecord;
}
