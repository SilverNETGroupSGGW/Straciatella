import 'package:silvertimetable/constants.dart';
import 'package:silvertimetable/data/fakes/fakes.dart';
import 'package:silvertimetable/data/models/classroom/classroom.dart';
import 'package:silvertimetable/data/models/lecturer/lecturer.dart';
import 'package:silvertimetable/data/models/lesson_def/lesson_def.dart';
import 'package:silvertimetable/data/models/organization/organization.dart';
import 'package:silvertimetable/data/models/student_group/student_group.dart';
import 'package:silvertimetable/data/models/study_program/study_program.dart';
import 'package:silvertimetable/data/models/study_semester/study_semester.dart';
import 'package:silvertimetable/data/models/subject/subject.dart';
import 'package:silvertimetable/data/models/tenant/tenant.dart';
import 'package:silvertimetable/helpers.dart';

final _now = DateTime.now();

sealed class FakeGenerators {
  static ClassroomType genClassroomType({
    String? id,
    String? name,
    bool? isPrimitiveType,
    DateTime? created,
    DateTime? updated,
  }) =>
      ClassroomType(
        id: id ?? UniqueInt.value.toString(),
        created: created ?? _now,
        updated: updated ?? _now,
        name: name ?? ["aula", "sala", "lab"].chooseOne(),
        isPrimitiveType: isPrimitiveType ?? random.nextBool(),
      );

  static Classroom genClassroom({
    String? id,
    String? name,
    String? building,
    String? floor,
    int? capacity,
    DateTime? created,
    DateTime? updated,
    required ClassroomType type,
  }) =>
      Classroom(
        id: id ?? UniqueInt.value.toString(),
        name: name ??
            [
              "Sala 1",
              "Sala 2",
              "Aula 1",
              "Sala komputerowa",
            ].chooseOne(),
        created: created ?? _now,
        updated: updated ?? _now,
        building: building ?? (random.nextInt(10) + 30).toString(),
        floor: floor ?? (random.nextInt(5) - 1).toString(),
        capacity: capacity ?? random.nextInt(40) + 1,
        type: type,
      );

  static LecturerBase genLecturerBase({
    String? id,
    DateTime? created,
    DateTime? updated,
    String? firstName,
    String? surName,
    String? academicDegree,
    String? email,
    String? institute,
    required Organization organization,
  }) =>
      LecturerBase(
        id: id ?? UniqueInt.value.toString(),
        created: created ?? _now,
        updated: updated ?? _now,
        firstName: firstName ?? "Firstname ${random.nextInt(100)}",
        surName: surName ?? "Lastname ${random.nextInt(100)}",
        academicDegree: academicDegree ?? "Profesor",
        email: email ?? "email${random.nextInt(100)}@example.com",
        institute: institute ?? "Institute ${random.nextInt(100)}",
        organization: organization,
      );

  static Organization genOrganization({
    String? id,
    DateTime? created,
    DateTime? updated,
    String? name,
  }) =>
      Organization(
        id: id ?? UniqueInt.value.toString(),
        created: created ?? _now,
        updated: updated ?? _now,
        name: name ?? "Organization ${random.nextInt(100)}",
      );

  static StudentGroup genStudentGroup({
    String? id,
    DateTime? created,
    DateTime? updated,
    String? name,
    int? capacity,
  }) =>
      StudentGroup(
        id: id ?? UniqueInt.value.toString(),
        created: created ?? _now,
        updated: updated ?? _now,
        name: name ?? "Group ${random.nextInt(100)}",
        capacity: capacity ?? random.nextInt(20) + 1,
      );

  static StudyProgramBase genStudyProgramBase({
    String? id,
    DateTime? created,
    DateTime? updated,
    String? name,
    String? faculty,
    String? fieldOfStudy,
    String? studyMode,
    String? degreeOfStudy,
    String? startDate,
    required Tenant tenant,
  }) =>
      StudyProgramBase(
        id: id ?? UniqueInt.value.toString(),
        created: created ?? _now,
        updated: updated ?? _now,
        name: name ?? "Study program ${random.nextInt(100)}",
        faculty: faculty ?? "Faculty ${random.nextInt(100)}",
        fieldOfStudy: fieldOfStudy ?? "FieldOfStudy ${random.nextInt(100)}",
        studyMode: studyMode ?? "StudyMode ${random.nextInt(100)}",
        degreeOfStudy:
            degreeOfStudy ?? "Degree Of Study ${random.nextInt(100)}",
        startDate: startDate ?? "StartDate ${random.nextInt(100)}",
        tenant: tenant,
      );

  static Tenant genTenant({
    String? id,
    DateTime? created,
    DateTime? updated,
    String? name,
    required Organization organization,
  }) =>
      Tenant(
        id: id ?? UniqueInt.value.toString(),
        created: created ?? _now,
        updated: updated ?? _now,
        name: name ?? "Tenant ${random.nextInt(100)}",
        organization: organization,
      );

  static SubjectType genSubjectType({
    String? id,
    DateTime? created,
    DateTime? updated,
    String? name,
    bool? isPrimitiveType,
  }) =>
      SubjectType(
        id: id ?? UniqueInt.value.toString(),
        created: created ?? _now,
        updated: updated ?? _now,
        name: name ?? "SubjectType ${random.nextInt(100)}",
        isPrimitiveType: isPrimitiveType ?? random.nextBool(),
      );

  static LessonDef genLessonDef({
    String? id,
    DateTime? created,
    DateTime? updated,
    required String ice,
  }) =>
      LessonDef(
        id: id ?? UniqueInt.value.toString(),
        created: created ?? _now,
        updated: updated ?? _now,
        ice: ice,
      );

  static StudySemester genStudySemester({
    String? id,
    DateTime? created,
    DateTime? updated,
    int? year,
    int? semester,
    DateTime? startDate,
    required List<Subject> subjects,
  }) =>
      StudySemester(
        id: id ?? UniqueInt.value.toString(),
        created: created ?? _now,
        updated: updated ?? _now,
        year: year ?? random.nextInt(4) + 1,
        semester: semester ?? random.nextInt(9) + 1,
        startDate: startDate ?? _now,
        subjects: subjects,
      );

  static Subject genSubject({
    String? id,
    DateTime? created,
    DateTime? updated,
    String? name,
    bool? isRemote,
    String? comment,
    bool? isConditional,
    required List<StudentGroup> groups,
    required List<SubjectType> subjectTypes,
    required List<LessonDef> lessons,
    required Classroom classroom,
    required List<LecturerBase> lecturers,
    required SubjectType type,
    required String ice,
  }) =>
      Subject(
        id: id ?? UniqueInt.value.toString(),
        created: created ?? _now,
        updated: updated ?? _now,
        name: name ?? "Subject ${random.nextInt(100)}",
        groups: groups,
        lessons: lessons,
        isRemote: isRemote ?? random.nextBool(),
        classroom: classroom,
        comment: comment ?? "Comment ${random.nextInt(100)}",
        lecturers: lecturers,
        isConditional: isConditional ?? random.nextBool(),
        ice: ice,
        type: type,
      );
}
