-- CreateTable
CREATE TABLE `Student` (
    `id` VARCHAR(191) NOT NULL,
    `firstName` VARCHAR(191) NOT NULL,
    `lastName` VARCHAR(191) NOT NULL,
    `matricNo` VARCHAR(191) NOT NULL,
    `phone` VARCHAR(191) NOT NULL,
    `address` VARCHAR(191) NULL,
    `institute` VARCHAR(191) NOT NULL,
    `department` VARCHAR(191) NOT NULL,
    `level` ENUM('ND1', 'NC2', '300', '400') NULL,
    `gender` ENUM('Male', 'Female') NULL,
    `place` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `password` VARCHAR(191) NOT NULL,
    `avatar` VARCHAR(191) NOT NULL DEFAULT 'https://i.pinimg.com/236x/00/70/d0/0070d05bc3d01aa3e04e5ebab7132985.jpg',
    `eligible` BOOLEAN NULL DEFAULT false,
    `user` ENUM('Admin', 'Student', 'Coordinator', 'Supervisor', 'Organisation') NOT NULL DEFAULT 'Student',
    `joinedDate` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `supervisorId` VARCHAR(191) NULL,
    `coordinatorId` VARCHAR(191) NULL,
    `organisationId` VARCHAR(191) NULL,

    UNIQUE INDEX `Student_matricNo_key`(`matricNo`),
    UNIQUE INDEX `Student_phone_key`(`phone`),
    UNIQUE INDEX `Student_email_key`(`email`),
    INDEX `Student_supervisorId_idx`(`supervisorId`),
    INDEX `Student_coordinatorId_idx`(`coordinatorId`),
    INDEX `Student_organisationId_idx`(`organisationId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Supervisor` (
    `id` VARCHAR(191) NOT NULL,
    `title` ENUM('Professor', 'Doctor', 'Mr', 'Mrs', 'Miss') NOT NULL,
    `firstName` VARCHAR(191) NOT NULL,
    `lastName` VARCHAR(191) NOT NULL,
    `staffID` VARCHAR(191) NOT NULL,
    `phone` VARCHAR(191) NOT NULL,
    `institute` VARCHAR(191) NOT NULL,
    `department` VARCHAR(191) NOT NULL,
    `gender` ENUM('Male', 'Female') NULL,
    `email` VARCHAR(191) NOT NULL,
    `password` VARCHAR(191) NOT NULL,
    `avatar` VARCHAR(191) NULL DEFAULT 'https://i.pinimg.com/236x/00/70/d0/0070d05bc3d01aa3e04e5ebab7132985.jpg',
    `user` ENUM('Admin', 'Student', 'Coordinator', 'Supervisor', 'Organisation') NOT NULL DEFAULT 'Supervisor',
    `joinedDate` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `coordinatorId` VARCHAR(191) NULL,

    UNIQUE INDEX `Supervisor_staffID_key`(`staffID`),
    UNIQUE INDEX `Supervisor_phone_key`(`phone`),
    UNIQUE INDEX `Supervisor_email_key`(`email`),
    INDEX `Supervisor_coordinatorId_idx`(`coordinatorId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Coordinator` (
    `id` VARCHAR(191) NOT NULL,
    `title` ENUM('Professor', 'Doctor', 'Mr', 'Mrs', 'Miss') NOT NULL,
    `firstName` VARCHAR(191) NOT NULL,
    `lastName` VARCHAR(191) NOT NULL,
    `staffID` VARCHAR(191) NOT NULL,
    `phone` VARCHAR(191) NOT NULL,
    `institute` VARCHAR(191) NOT NULL,
    `department` VARCHAR(191) NOT NULL,
    `gender` ENUM('Male', 'Female') NULL,
    `email` VARCHAR(191) NOT NULL,
    `password` VARCHAR(191) NOT NULL,
    `avatar` VARCHAR(191) NULL DEFAULT 'https://i.pinimg.com/236x/00/70/d0/0070d05bc3d01aa3e04e5ebab7132985.jpg',
    `user` ENUM('Admin', 'Student', 'Coordinator', 'Supervisor', 'Organisation') NOT NULL DEFAULT 'Coordinator',
    `joinedDate` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    UNIQUE INDEX `Coordinator_staffID_key`(`staffID`),
    UNIQUE INDEX `Coordinator_phone_key`(`phone`),
    UNIQUE INDEX `Coordinator_email_key`(`email`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Organisation` (
    `id` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `sector` ENUM('Information Technology', 'Healthcare', 'Agriculture', 'Transportation', 'Energy', 'Commercial', 'Financial Services', 'Aviation', 'Construction', 'Manufacturing', 'Education And Training', 'Fashion', 'Logistics', 'Tourism', 'Telecommunication', 'Entertainment', 'Legal Services', 'Consultancy', 'Religion', 'Oil And Gas', 'Others') NOT NULL,
    `phone` VARCHAR(191) NOT NULL,
    `address` VARCHAR(191) NOT NULL,
    `employees` INTEGER NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `password` VARCHAR(191) NOT NULL,
    `logo` VARCHAR(191) NOT NULL,
    `user` ENUM('Admin', 'Student', 'Coordinator', 'Supervisor', 'Organisation') NOT NULL DEFAULT 'Organisation',
    `joinedDate` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    UNIQUE INDEX `Organisation_phone_key`(`phone`),
    UNIQUE INDEX `Organisation_email_key`(`email`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Admin` (
    `id` VARCHAR(191) NOT NULL,
    `firstName` VARCHAR(191) NOT NULL,
    `lastName` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `password` VARCHAR(191) NOT NULL,
    `avatar` VARCHAR(191) NULL,
    `user` ENUM('Admin', 'Student', 'Coordinator', 'Supervisor', 'Organisation') NOT NULL DEFAULT 'Admin',
    `joinedDate` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    UNIQUE INDEX `Admin_email_key`(`email`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `BlogPost` (
    `id` VARCHAR(191) NOT NULL,
    `title` VARCHAR(191) NOT NULL,
    `content` VARCHAR(191) NOT NULL,
    `image` VARCHAR(191) NOT NULL,
    `createdAt` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updateAt` DATETIME(3) NULL,

    UNIQUE INDEX `BlogPost_title_key`(`title`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Eligible` (
    `id` VARCHAR(191) NOT NULL,
    `institute` VARCHAR(191) NOT NULL,
    `department` VARCHAR(191) NOT NULL,
    `level` ENUM('ND1', 'NC2', '300', '400') NOT NULL,
    `matricNo` VARCHAR(191) NOT NULL,
    `createdAt` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    `supervisorId` VARCHAR(191) NULL,
    `coordinatorId` VARCHAR(191) NULL,

    UNIQUE INDEX `Eligible_matricNo_key`(`matricNo`),
    INDEX `Eligible_supervisorId_idx`(`supervisorId`),
    INDEX `Eligible_coordinatorId_idx`(`coordinatorId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Logbook` (
    `id` VARCHAR(191) NOT NULL,
    `actId` VARCHAR(191) NOT NULL,
    `day` DATETIME(3) NULL,
    `title` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NOT NULL,
    `label` ENUM('indigo', 'gray', 'green', 'blue', 'red') NOT NULL DEFAULT 'indigo',
    `diagram` VARCHAR(191) NULL,
    `approved` BOOLEAN NULL DEFAULT false,
    `createdAt` DATETIME(3) NULL DEFAULT CURRENT_TIMESTAMP(3),
    `studentId` VARCHAR(191) NULL,

    UNIQUE INDEX `Logbook_actId_key`(`actId`),
    INDEX `Logbook_studentId_idx`(`studentId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
