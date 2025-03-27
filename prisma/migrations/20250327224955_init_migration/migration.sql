-- CreateTable
CREATE TABLE "Course" (
    "courseId" SERIAL NOT NULL,
    "professorEnumber" INTEGER NOT NULL,
    "departmentId" INTEGER NOT NULL,
    "startDate" TIMESTAMP(3),
    "endDate" TIMESTAMP(3),
    "createdAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Course_pkey" PRIMARY KEY ("courseId")
);

-- CreateTable
CREATE TABLE "Student" (
    "enumber" SERIAL NOT NULL,
    "username" TEXT NOT NULL,
    "hashedPassword" TEXT NOT NULL,
    "permissionLevel" INTEGER NOT NULL,
    "email" TEXT NOT NULL,
    "startDate" TIMESTAMP(3),
    "graduationDate" TIMESTAMP(3),
    "createdAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Student_pkey" PRIMARY KEY ("enumber")
);

-- CreateTable
CREATE TABLE "Professor" (
    "enumber" SERIAL NOT NULL,
    "username" TEXT NOT NULL,
    "hashedPassword" TEXT NOT NULL,
    "permissionLevel" INTEGER NOT NULL,
    "email" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Professor_pkey" PRIMARY KEY ("enumber")
);

-- CreateTable
CREATE TABLE "StudentCourse" (
    "enumber" INTEGER NOT NULL,
    "courseId" INTEGER NOT NULL,

    CONSTRAINT "StudentCourse_pkey" PRIMARY KEY ("enumber","courseId")
);

-- CreateTable
CREATE TABLE "Resource" (
    "resourceId" SERIAL NOT NULL,
    "resourceName" TEXT NOT NULL,

    CONSTRAINT "Resource_pkey" PRIMARY KEY ("resourceId")
);

-- CreateTable
CREATE TABLE "ResourceCourse" (
    "resourceId" INTEGER NOT NULL,
    "courseId" INTEGER NOT NULL,

    CONSTRAINT "ResourceCourse_pkey" PRIMARY KEY ("resourceId","courseId")
);

-- CreateTable
CREATE TABLE "Department" (
    "departmentId" SERIAL NOT NULL,
    "departmentName" TEXT NOT NULL,

    CONSTRAINT "Department_pkey" PRIMARY KEY ("departmentId")
);

-- AddForeignKey
ALTER TABLE "Course" ADD CONSTRAINT "Course_professorEnumber_fkey" FOREIGN KEY ("professorEnumber") REFERENCES "Professor"("enumber") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Course" ADD CONSTRAINT "Course_departmentId_fkey" FOREIGN KEY ("departmentId") REFERENCES "Department"("departmentId") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "StudentCourse" ADD CONSTRAINT "StudentCourse_enumber_fkey" FOREIGN KEY ("enumber") REFERENCES "Student"("enumber") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "StudentCourse" ADD CONSTRAINT "StudentCourse_courseId_fkey" FOREIGN KEY ("courseId") REFERENCES "Course"("courseId") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ResourceCourse" ADD CONSTRAINT "ResourceCourse_resourceId_fkey" FOREIGN KEY ("resourceId") REFERENCES "Resource"("resourceId") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ResourceCourse" ADD CONSTRAINT "ResourceCourse_courseId_fkey" FOREIGN KEY ("courseId") REFERENCES "Course"("courseId") ON DELETE RESTRICT ON UPDATE CASCADE;
