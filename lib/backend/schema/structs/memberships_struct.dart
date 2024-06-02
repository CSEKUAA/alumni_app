// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '../../../custom/custom_util.dart';

class MembershipsStruct extends FFFirebaseStruct {
  MembershipsStruct({
    String? chapterId,
    String? chapter,
    String? position,
    int? positionId,
    int? committeId,
    String? committe,
    String? disciplineAcronym,
    String? roll,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _chapterId = chapterId,
        _chapter = chapter,
        _position = position,
        _positionId = positionId,
        _committeId = committeId,
        _committe = committe,
        _disciplineAcronym = disciplineAcronym,
        _roll = roll,
        super(firestoreUtilData);

  // "chapter_id" field.
  String? _chapterId;
  String get chapterId => _chapterId ?? '';
  set chapterId(String? val) => _chapterId = val;
  bool hasChapterId() => _chapterId != null;

  // "chapter" field.
  String? _chapter;
  String get chapter => _chapter ?? '';
  set chapter(String? val) => _chapter = val;
  bool hasChapter() => _chapter != null;

  // "position" field.
  String? _position;
  String get position => _position ?? '';
  set position(String? val) => _position = val;
  bool hasPosition() => _position != null;

  // "position_id" field.
  int? _positionId;
  int get positionId => _positionId ?? 0;
  set positionId(int? val) => _positionId = val;
  void incrementPositionId(int amount) => _positionId = positionId + amount;
  bool hasPositionId() => _positionId != null;

  // "committe_id" field.
  int? _committeId;
  int get committeId => _committeId ?? 0;
  set committeId(int? val) => _committeId = val;
  void incrementCommitteId(int amount) => _committeId = committeId + amount;
  bool hasCommitteId() => _committeId != null;

  // "committe" field.
  String? _committe;
  String get committe => _committe ?? '';
  set committe(String? val) => _committe = val;
  bool hasCommitte() => _committe != null;

  // "discipline_acronym" field.
  String? _disciplineAcronym;
  String get disciplineAcronym => _disciplineAcronym ?? '';
  set disciplineAcronym(String? val) => _disciplineAcronym = val;
  bool hasDisciplineAcronym() => _disciplineAcronym != null;

  // "roll" field.
  String? _roll;
  String get roll => _roll ?? '';
  set roll(String? val) => _roll = val;
  bool hasRoll() => _roll != null;

  static MembershipsStruct fromMap(Map<String, dynamic> data) =>
      MembershipsStruct(
        chapterId: data['chapter_id'] as String?,
        chapter: data['chapter'] as String?,
        position: data['position'] as String?,
        positionId: castToType<int>(data['position_id']),
        committeId: castToType<int>(data['committe_id']),
        committe: data['committe'] as String?,
        disciplineAcronym: data['discipline_acronym'] as String?,
        roll: data['roll'] as String?,
      );

  static MembershipsStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? MembershipsStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'chapter_id': _chapterId,
        'chapter': _chapter,
        'position': _position,
        'position_id': _positionId,
        'committe_id': _committeId,
        'committe': _committe,
        'discipline_acronym': _disciplineAcronym,
        'roll': _roll,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'chapter_id': serializeParam(
          _chapterId,
          ParamType.String,
        ),
        'chapter': serializeParam(
          _chapter,
          ParamType.String,
        ),
        'position': serializeParam(
          _position,
          ParamType.String,
        ),
        'position_id': serializeParam(
          _positionId,
          ParamType.int,
        ),
        'committe_id': serializeParam(
          _committeId,
          ParamType.int,
        ),
        'committe': serializeParam(
          _committe,
          ParamType.String,
        ),
        'discipline_acronym': serializeParam(
          _disciplineAcronym,
          ParamType.String,
        ),
        'roll': serializeParam(
          _roll,
          ParamType.String,
        ),
      }.withoutNulls;

  static MembershipsStruct fromSerializableMap(Map<String, dynamic> data) =>
      MembershipsStruct(
        chapterId: deserializeParam(
          data['chapter_id'],
          ParamType.String,
          false,
        ),
        chapter: deserializeParam(
          data['chapter'],
          ParamType.String,
          false,
        ),
        position: deserializeParam(
          data['position'],
          ParamType.String,
          false,
        ),
        positionId: deserializeParam(
          data['position_id'],
          ParamType.int,
          false,
        ),
        committeId: deserializeParam(
          data['committe_id'],
          ParamType.int,
          false,
        ),
        committe: deserializeParam(
          data['committe'],
          ParamType.String,
          false,
        ),
        disciplineAcronym: deserializeParam(
          data['discipline_acronym'],
          ParamType.String,
          false,
        ),
        roll: deserializeParam(
          data['roll'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MembershipsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MembershipsStruct &&
        chapterId == other.chapterId &&
        chapter == other.chapter &&
        position == other.position &&
        positionId == other.positionId &&
        committeId == other.committeId &&
        committe == other.committe &&
        disciplineAcronym == other.disciplineAcronym &&
        roll == other.roll;
  }

  @override
  int get hashCode => const ListEquality().hash([
        chapterId,
        chapter,
        position,
        positionId,
        committeId,
        committe,
        disciplineAcronym,
        roll
      ]);
}

MembershipsStruct createMembershipsStruct({
  String? chapterId,
  String? chapter,
  String? position,
  int? positionId,
  int? committeId,
  String? committe,
  String? disciplineAcronym,
  String? roll,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MembershipsStruct(
      chapterId: chapterId,
      chapter: chapter,
      position: position,
      positionId: positionId,
      committeId: committeId,
      committe: committe,
      disciplineAcronym: disciplineAcronym,
      roll: roll,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MembershipsStruct? updateMembershipsStruct(
  MembershipsStruct? memberships, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    memberships
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMembershipsStructData(
  Map<String, dynamic> firestoreData,
  MembershipsStruct? memberships,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (memberships == null) {
    return;
  }
  if (memberships.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && memberships.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final membershipsData =
      getMembershipsFirestoreData(memberships, forFieldValue);
  final nestedData =
      membershipsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = memberships.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMembershipsFirestoreData(
  MembershipsStruct? memberships, [
  bool forFieldValue = false,
]) {
  if (memberships == null) {
    return {};
  }
  final firestoreData = mapToFirestore(memberships.toMap());

  // Add any Firestore field values
  memberships.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMembershipsListFirestoreData(
  List<MembershipsStruct>? membershipss,
) =>
    membershipss?.map((e) => getMembershipsFirestoreData(e, true)).toList() ??
    [];
