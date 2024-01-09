final mockLecturer = {
  "id": "8a563599-4a25-470e-0547-08dbeeaa6ca9",
  "created": "2023-11-26T18:06:33.7820837",
  "updated": "2023-11-26T18:06:33.7821303",
  "firstName": "MockName",
  "surname": "MockSurname",
  "academicDegree": "MastersDegree",
  "email": "mockemail@sggw.com",
  "subjects": [
    {
      "id": "2075f1d9-dc89-4216-beb3-9ac19e8ab704",
      "created": "2023-12-11T21:24:41.4418146",
      "updated": "2023-12-11T22:17:50.4933348",
      "scheduleId": "46a10323-c491-4e1b-b3ff-c5f75ba0c5ab",
      "name": "Test",
      "type": "PracticalClasses",
      "startTime": "12:00:00",
      "dayOfWeek": "Tuesday",
      "duration": "01:30:00",
      "isRemote": false,
      "comment": "",
      "schedule": {
        "id": "46a10323-c491-4e1b-b3ff-c5f75ba0c5ab",
        "name": "AA",
        "year": 2,
        "semester": 2,
        "faculty": "XX",
        "fieldOfStudy": "ZZ",
        "studyMode": "PartTimeStudies",
        "degreeOfStudy": "MastersDegree",
      },
      "classroom": {
        "id": "465eaa62-086c-476f-8a7b-0045c4cfa509",
        "created": "2023-11-27T10:30:57.3227462",
        "updated": "2023-11-27T10:30:57.3227464",
        "name": "Aula IV.",
        "floor": "",
        "building": "34",
      },
      "lessons": [
        {
          "id": "5a161256-ef9d-4523-9462-15f0adfc380e",
          "created": "2023-12-22T17:48:37.7724059",
          "updated": "2023-12-22T17:49:28.7739208",
          "numberOfLesson": 1,
          "startTime": "2024-05-01T10:00:00",
          "duration": "01:30:00",
        },
        {
          "id": "cea2f0ef-66cc-4ba4-9a21-5ec586d6ec1b",
          "created": "2023-12-22T17:49:28.7635819",
          "updated": "2023-12-22T17:49:28.7739372",
          "numberOfLesson": 2,
          "startTime": "2024-02-28T01:00:00",
          "duration": "01:45:00",
        }
      ],
      "groups": [
        {
          "id": "efe04f87-3d7d-46f8-9cc1-0852564be8fa",
          "created": "2023-12-11T21:24:14.1256362",
          "updated": "2023-12-11T21:24:14.1256709",
          "scheduleId": "46a10323-c491-4e1b-b3ff-c5f75ba0c5ab",
          "name": "1",
        }
      ],
    },
    {
      "id": "1f1c18d1-2bac-4ac7-9043-da3952f2c66a",
      "created": "2023-12-28T17:28:00.8960248",
      "updated": "2023-12-28T17:28:00.8960655",
      "scheduleId": "46a10323-c491-4e1b-b3ff-c5f75ba0c5ab",
      "name": "Test AA",
      "type": "PracticalClasses",
      "startTime": "14:00:00",
      "dayOfWeek": "Monday",
      "duration": "01:30:00",
      "isRemote": false,
      "comment": "",
      "schedule": {
        "id": "46a10323-c491-4e1b-b3ff-c5f75ba0c5ab",
        "name": "AA",
        "year": 2,
        "semester": 2,
        "faculty": "XX",
        "fieldOfStudy": "ZZ",
        "studyMode": "PartTimeStudies",
        "degreeOfStudy": "MastersDegree",
      },
      "classroom": {
        "id": "465eaa62-086c-476f-8a7b-0045c4cfa509",
        "created": "2023-11-27T10:30:57.3227462",
        "updated": "2023-11-27T10:30:57.3227464",
        "name": "Aula IV.",
        "floor": "",
        "building": "34",
      },
      "lessons": [],
      "groups": [
        {
          "id": "efe04f87-3d7d-46f8-9cc1-0852564be8fa",
          "created": "2023-12-11T21:24:14.1256362",
          "updated": "2023-12-11T21:24:14.1256709",
          "scheduleId": "46a10323-c491-4e1b-b3ff-c5f75ba0c5ab",
          "name": "1",
        }
      ],
    }
  ],
};

final mockSchedule = {
  "id": "edb84e2f-62e7-472a-bdc3-b10cadaebe42",
  "created": "2024-01-06T21:52:07.1286274",
  "updated": "2024-01-07T10:36:21.1351993",
  "startDate": "2023-10-02T00:00:00+00:00",
  "name": "InfE R2S3",
  "year": 2,
  "semester": 3,
  "faculty": "Wydział Zastosowań Informatyki i Matematyki",
  "fieldOfStudy": "Informatyka i ekonometria",
  "studyMode": "FullTimeStudies",
  "degreeOfStudy": "MastersDegree",
  "subjects": [
    {
      "id": "3818d13e-622f-4f1e-9ac8-afde546f5d8a",
      "created": "2024-01-06T21:56:21.7918381",
      "updated": "2024-01-06T21:56:21.7918382",
      "scheduleId": "edb84e2f-62e7-472a-bdc3-b10cadaebe42",
      "name": "Statystyka społeczna",
      "type": "Laboratories",
      "startTime": "09:15:00",
      "dayOfWeek": "Monday",
      "duration": "01:15:00",
      "isRemote": false,
      "comment": ".",
      "lecturers": [
        {
          "id": "2d6300a1-eb86-4506-e3cb-08dc0ef28643",
          "firstName": "FirstName",
          "surname": "Surname",
          "academicDegree": "dr hab.",
          "email": "email@sggw.edu.pl",
        }
      ],
      "groups": [
        {
          "id": "812e4566-6a8b-4de6-9dab-2fc59b4b78d8",
          "name": "EMOS",
        }
      ],
      "lessons": [],
      "classroom": {
        "id": "e2b966bb-cbf3-4fd3-895e-ba3d02b6b1fb",
        "name": "14",
        "building": "34",
        "floor": "3",
      },
    },
    {
      "id": "a20015e7-499b-4dfd-b7cd-c20c72700881",
      "created": "2024-01-06T21:57:14.8436709",
      "updated": "2024-01-06T21:57:14.8436711",
      "scheduleId": "edb84e2f-62e7-472a-bdc3-b10cadaebe42",
      "name": "Zarządzanie własnością intelektualną",
      "type": "Lecture",
      "startTime": "14:15:00",
      "dayOfWeek": "Monday",
      "duration": "00:45:00",
      "isRemote": false,
      "comment": ".",
      "lecturers": [
        {
          "id": "c4da31f5-aea9-4d63-e3cc-08dc0ef28643",
          "firstName": "Firstname",
          "surname": "lastname",
          "academicDegree": "dr",
          "email": "firstname_lastname@sggw.edu.pl",
        }
      ],
      "groups": [
        {
          "id": "812e4566-6a8b-4de6-9dab-2fc59b4b78d8",
          "name": "EMOS",
        }
      ],
      "lessons": [],
      "classroom": {
        "id": "e2b966bb-cbf3-4fd3-895e-ba3d02b6b1fb",
        "name": "14",
        "building": "34",
        "floor": "3",
      },
    },
    {
      "id": "d9edda18-52e8-41ac-98a3-d0d825805500",
      "created": "2024-01-06T21:58:33.1822401",
      "updated": "2024-01-07T08:25:31.1730813",
      "scheduleId": "edb84e2f-62e7-472a-bdc3-b10cadaebe42",
      "name": "Analiza sieci społecznościowych",
      "type": "Faculty",
      "startTime": "18:30:00",
      "dayOfWeek": "Monday",
      "duration": "01:30:00",
      "isRemote": false,
      "comment": ".",
      "lecturers": [
        {
          "id": "d73fec63-c393-4db8-e3ce-08dc0ef28643",
          "firstName": "Firstname",
          "surname": "Surname",
          "academicDegree": "dr",
          "email": "firstname_surname@sggw.edu.pl",
        }
      ],
      "groups": [
        {
          "id": "812e4566-6a8b-4de6-9dab-2fc59b4b78d8",
          "name": "EMOS",
        }
      ],
      "lessons": [],
      "classroom": {
        "id": "e2b966bb-cbf3-4fd3-895e-ba3d02b6b1fb",
        "name": "14",
        "building": "34",
        "floor": "3",
      },
    },
    {
      "id": "79007ab3-ef61-4fab-9963-e202f7f8a7ea",
      "created": "2024-01-06T21:57:45.156631",
      "updated": "2024-01-06T22:01:28.5113418",
      "scheduleId": "edb84e2f-62e7-472a-bdc3-b10cadaebe42",
      "name": "Zarządzanie projektami",
      "type": "Lecture",
      "startTime": "15:15:00",
      "dayOfWeek": "Monday",
      "duration": "00:45:00",
      "isRemote": false,
      "comment": ".",
      "lecturers": [
        {
          "id": "3379de3f-2cc9-4d2f-e3cd-08dc0ef28643",
          "firstName": "Firstname",
          "surname": "Lastname",
          "academicDegree": "dr",
          "email": "firstname_lastname@sggw.edu.pl",
        }
      ],
      "groups": [
        {
          "id": "812e4566-6a8b-4de6-9dab-2fc59b4b78d8",
          "name": "EMOS",
        }
      ],
      "lessons": [],
      "classroom": {
        "id": "e2b966bb-cbf3-4fd3-895e-ba3d02b6b1fb",
        "name": "14",
        "building": "34",
        "floor": "3",
      },
    },
    {
      "id": "35ae91e5-9ed7-46ee-92d3-f95a72b34a8a",
      "created": "2024-01-06T21:58:07.6018523",
      "updated": "2024-01-07T08:26:21.7593297",
      "scheduleId": "edb84e2f-62e7-472a-bdc3-b10cadaebe42",
      "name": "Analiza sieci społecznościowych",
      "type": "Faculty",
      "startTime": "17:45:00",
      "dayOfWeek": "Monday",
      "duration": "00:45:00",
      "isRemote": false,
      "comment": ".",
      "lecturers": [
        {
          "id": "d73fec63-c393-4db8-e3ce-08dc0ef28643",
          "firstName": "Firstname",
          "surname": "Surname",
          "academicDegree": "dr",
          "email": "firstname_surname@sggw.edu.pl",
        }
      ],
      "groups": [
        {
          "id": "812e4566-6a8b-4de6-9dab-2fc59b4b78d8",
          "name": "EMOS",
        }
      ],
      "lessons": [],
      "classroom": {
        "id": "e2b966bb-cbf3-4fd3-895e-ba3d02b6b1fb",
        "name": "14",
        "building": "34",
        "floor": "3",
      },
    },
    {
      "id": "076be26b-1dfc-4e6b-9891-fbf7218dafd2",
      "created": "2024-01-06T21:56:51.597897",
      "updated": "2024-01-06T21:56:51.5978972",
      "scheduleId": "edb84e2f-62e7-472a-bdc3-b10cadaebe42",
      "name": "Modele dla danych panelowych",
      "type": "Laboratories",
      "startTime": "11:45:00",
      "dayOfWeek": "Monday",
      "duration": "02:15:00",
      "isRemote": false,
      "comment": ".",
      "lecturers": [
        {
          "id": "2d6300a1-eb86-4506-e3cb-08dc0ef28643",
          "firstName": "FirstName",
          "surname": "Surname",
          "academicDegree": "dr hab.",
          "email": "email@sggw.edu.pl",
        }
      ],
      "groups": [
        {
          "id": "812e4566-6a8b-4de6-9dab-2fc59b4b78d8",
          "name": "EMOS",
        }
      ],
      "lessons": [],
      "classroom": {
        "id": "e2b966bb-cbf3-4fd3-895e-ba3d02b6b1fb",
        "name": "14",
        "building": "34",
        "floor": "3",
      },
    }
  ],
};

final mockSchedulesIndex = [
  {
    "id": "d975879c-c267-4e69-bcde-8b1c8dc448de",
    "created": "2024-01-06T21:07:15.7158673",
    "updated": "2024-01-07T10:32:38.1230452",
    "startDate": "2023-10-02T00:00:00+00:00",
    "name": "Inf R3S5",
    "year": 3,
    "semester": 5,
    "faculty": "Wydział Zastosowań Informatyki i Matematyki",
    "fieldOfStudy": "Informatyka",
    "studyMode": "FullTimeStudies",
    "degreeOfStudy": "BachelorsDegree",
  },
  {
    "id": "edb84e2f-62e7-472a-bdc3-b10cadaebe42",
    "created": "2024-01-06T21:52:07.1286274",
    "updated": "2024-01-07T10:36:21.1351993",
    "startDate": "2023-10-02T00:00:00+00:00",
    "name": "InfE R2S3",
    "year": 2,
    "semester": 3,
    "faculty": "Wydział Zastosowań Informatyki i Matematyki",
    "fieldOfStudy": "Informatyka i ekonometria",
    "studyMode": "FullTimeStudies",
    "degreeOfStudy": "MastersDegree",
  },
  {
    "id": "674089ff-dd11-48a6-8d44-fce8d94d0159",
    "created": "2024-01-07T11:06:32.3880366",
    "updated": "2024-01-07T11:06:32.3880874",
    "startDate": "2023-10-02T00:00:00+00:00",
    "name": "SilverNET",
    "year": 1,
    "semester": 1,
    "faculty": "Wydział Zastosowań Informatyki i Matematyki",
    "fieldOfStudy": "Informatyka",
    "studyMode": "FullTimeStudies",
    "degreeOfStudy": "BachelorsDegree",
  },
];

final mockLecturersIndex = [
  {
    "id": "44f2dac7-32c3-4fbe-e3c6-08dc0ef28643",
    "created": "2024-01-06T21:06:03.9625549",
    "updated": "2024-01-06T21:06:03.962555",
    "firstName": "Marcin",
    "surname": "Surname1",
    "academicDegree": "dr",
    "email": "marcin_surname1@sggw.edu.pl",
  },
  {
    "id": "d0de4766-cbf9-44b0-e3c7-08dc0ef28643",
    "created": "2024-01-06T21:06:16.2553602",
    "updated": "2024-01-06T21:06:16.2553604",
    "firstName": "Krzysztof",
    "surname": "Surname2",
    "academicDegree": "dr",
    "email": "krzyszrof_surname2@sggw.edu.pl",
  },
  {
    "id": "5027ca0b-e1b2-43ee-e3c8-08dc0ef28643",
    "created": "2024-01-06T21:06:31.4855967",
    "updated": "2024-01-06T21:06:31.4855968",
    "firstName": "Dariusz",
    "surname": "Surname3",
    "academicDegree": "dr",
    "email": "dariusz_surname3@sggw.edu.pl",
  },
];
