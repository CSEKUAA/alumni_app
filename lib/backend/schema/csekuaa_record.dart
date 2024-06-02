import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '../../custom/custom_util.dart';

class CsekuaaRecord extends FirestoreRecord {
  CsekuaaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "roll" field.
  String? _roll;
  String get roll => _roll ?? '';
  bool hasRoll() => _roll != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "nick" field.
  String? _nick;
  String get nick => _nick ?? '';
  bool hasNick() => _nick != null;

  // "batch" field.
  int? _batch;
  int get batch => _batch ?? 0;
  bool hasBatch() => _batch != null;

  // "discipline_code" field.
  String? _disciplineCode;
  String get disciplineCode => _disciplineCode ?? '';
  bool hasDisciplineCode() => _disciplineCode != null;

  // "grad_year" field.
  int? _gradYear;
  int get gradYear => _gradYear ?? 0;
  bool hasGradYear() => _gradYear != null;

  // "birth_date" field.
  DateTime? _birthDate;
  DateTime? get birthDate => _birthDate;
  bool hasBirthDate() => _birthDate != null;

  // "blood_group" field.
  String? _bloodGroup;
  String get bloodGroup => _bloodGroup ?? '';
  bool hasBloodGroup() => _bloodGroup != null;

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  bool hasCountry() => _country != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "profession" field.
  String? _profession;
  String get profession => _profession ?? '';
  bool hasProfession() => _profession != null;

  // "designation" field.
  String? _designation;
  String get designation => _designation ?? '';
  bool hasDesignation() => _designation != null;

  // "company" field.
  String? _company;
  String get company => _company ?? '';
  bool hasCompany() => _company != null;

  // "company_address" field.
  String? _companyAddress;
  String get companyAddress => _companyAddress ?? '';
  bool hasCompanyAddress() => _companyAddress != null;

  // "creation_time" field.
  String? _creationTime;
  String get creationTime => _creationTime ?? '';
  bool hasCreationTime() => _creationTime != null;

  // "modified_time" field.
  String? _modifiedTime;
  String get modifiedTime => _modifiedTime ?? '';
  bool hasModifiedTime() => _modifiedTime != null;

  // "approved" field.
  String? _approved;
  String get approved => _approved ?? '';
  bool hasApproved() => _approved != null;

  // "approval_date" field.
  String? _approvalDate;
  String get approvalDate => _approvalDate ?? '';
  bool hasApprovalDate() => _approvalDate != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _roll = snapshotData['roll'] as String?;
    _name = snapshotData['name'] as String?;
    _nick = snapshotData['nick'] as String?;
    _batch = castToType<int>(snapshotData['batch']);
    _disciplineCode = snapshotData['discipline_code'] as String?;
    _gradYear = castToType<int>(snapshotData['grad_year']);
    _birthDate = snapshotData['birth_date'] as DateTime?;
    _bloodGroup = snapshotData['blood_group'] as String?;
    _photo = snapshotData['photo'] as String?;
    _address = snapshotData['address'] as String?;
    _city = snapshotData['city'] as String?;
    _country = snapshotData['country'] as String?;
    _phone = snapshotData['phone'] as String?;
    _email = snapshotData['email'] as String?;
    _profession = snapshotData['profession'] as String?;
    _designation = snapshotData['designation'] as String?;
    _company = snapshotData['company'] as String?;
    _companyAddress = snapshotData['company_address'] as String?;
    _creationTime = snapshotData['creation_time'] as String?;
    _modifiedTime = snapshotData['modified_time'] as String?;
    _approved = snapshotData['approved'] as String?;
    _approvalDate = snapshotData['approval_date'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('csekuaa');

  static Stream<CsekuaaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CsekuaaRecord.fromSnapshot(s));

  static Future<CsekuaaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CsekuaaRecord.fromSnapshot(s));

  static CsekuaaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CsekuaaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CsekuaaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CsekuaaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CsekuaaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CsekuaaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCsekuaaRecordData({
  int? id,
  String? roll,
  String? name,
  String? nick,
  int? batch,
  String? disciplineCode,
  int? gradYear,
  DateTime? birthDate,
  String? bloodGroup,
  String? photo,
  String? address,
  String? city,
  String? country,
  String? phone,
  String? email,
  String? profession,
  String? designation,
  String? company,
  String? companyAddress,
  String? creationTime,
  String? modifiedTime,
  String? approved,
  String? approvalDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'roll': roll,
      'name': name,
      'nick': nick,
      'batch': batch,
      'discipline_code': disciplineCode,
      'grad_year': gradYear,
      'birth_date': birthDate,
      'blood_group': bloodGroup,
      'photo': photo,
      'address': address,
      'city': city,
      'country': country,
      'phone': phone,
      'email': email,
      'profession': profession,
      'designation': designation,
      'company': company,
      'company_address': companyAddress,
      'creation_time': creationTime,
      'modified_time': modifiedTime,
      'approved': approved,
      'approval_date': approvalDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class CsekuaaRecordDocumentEquality implements Equality<CsekuaaRecord> {
  const CsekuaaRecordDocumentEquality();

  @override
  bool equals(CsekuaaRecord? e1, CsekuaaRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.roll == e2?.roll &&
        e1?.name == e2?.name &&
        e1?.nick == e2?.nick &&
        e1?.batch == e2?.batch &&
        e1?.disciplineCode == e2?.disciplineCode &&
        e1?.gradYear == e2?.gradYear &&
        e1?.birthDate == e2?.birthDate &&
        e1?.bloodGroup == e2?.bloodGroup &&
        e1?.photo == e2?.photo &&
        e1?.address == e2?.address &&
        e1?.city == e2?.city &&
        e1?.country == e2?.country &&
        e1?.phone == e2?.phone &&
        e1?.email == e2?.email &&
        e1?.profession == e2?.profession &&
        e1?.designation == e2?.designation &&
        e1?.company == e2?.company &&
        e1?.companyAddress == e2?.companyAddress &&
        e1?.creationTime == e2?.creationTime &&
        e1?.modifiedTime == e2?.modifiedTime &&
        e1?.approved == e2?.approved &&
        e1?.approvalDate == e2?.approvalDate;
  }

  @override
  int hash(CsekuaaRecord? e) => const ListEquality().hash([
        e?.id,
        e?.roll,
        e?.name,
        e?.nick,
        e?.batch,
        e?.disciplineCode,
        e?.gradYear,
        e?.birthDate,
        e?.bloodGroup,
        e?.photo,
        e?.address,
        e?.city,
        e?.country,
        e?.phone,
        e?.email,
        e?.profession,
        e?.designation,
        e?.company,
        e?.companyAddress,
        e?.creationTime,
        e?.modifiedTime,
        e?.approved,
        e?.approvalDate
      ]);

  @override
  bool isValidKey(Object? o) => o is CsekuaaRecord;
}
