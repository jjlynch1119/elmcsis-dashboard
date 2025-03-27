CREATE TABLE "course" (
  "course_id" integer PRIMARY KEY,
  "professor_enumber" integer,
  "department" varchar,
  "tart_date" timestamp,
  "end_date" timestamp,
  "created_at" timestamp
);

CREATE TABLE "student" (
  "enumber" integer PRIMARY KEY,
  "username" varchar,
  "hashed_password" char(60),
  "permission_level" integer,
  "email" varchar,
  "start_date" timestamp,
  "graduation_date" timestamp,
  "created_at" timestamp
);

CREATE TABLE "professor" (
  "enumber" integer PRIMARY KEY,
  "username" varchar,
  "hashed_password" char(60),
  "permission_level" integer,
  "email" varchar,
  "created_at" timestamp
);

CREATE TABLE "student_course" (
  "enumber" integer,
  "course_id" integer,
  PRIMARY KEY ("enumber", "course_id")
);

CREATE TABLE "resource" (
  "resource_id" integer PRIMARY KEY,
  "resource_name" varchar
);

CREATE TABLE "resource_course" (
  "resource_id" integer,
  "course_id" integer,
  PRIMARY KEY ("resource_id", "course_id")
);

ALTER TABLE "student_course" ADD FOREIGN KEY ("enumber") REFERENCES "student" ("enumber");

ALTER TABLE "student_course" ADD FOREIGN KEY ("course_id") REFERENCES "course" ("course_id");

ALTER TABLE "course" ADD FOREIGN KEY ("professor_enumber") REFERENCES "professor" ("enumber");

ALTER TABLE "resource_course" ADD FOREIGN KEY ("resource_id") REFERENCES "resource" ("resource_id");

ALTER TABLE "resource_course" ADD FOREIGN KEY ("course_id") REFERENCES "course" ("course_id");
