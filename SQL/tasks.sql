/*
Navicat SQLite Data Transfer

Source Server         : TS
Source Server Version : 31202
Source Host           : :0

Target Server Type    : SQLite
Target Server Version : 31202
File Encoding         : 65001

Date: 2016-07-29 13:51:32
*/

PRAGMA foreign_keys = OFF;

-- ----------------------------
-- Table structure for tasks
-- ----------------------------
DROP TABLE IF EXISTS "main"."tasks";
CREATE TABLE "tasks" (
"tsID"  INTEGER NOT NULL,
"date"  TEXT,
"day"  TEXT,
"taskStart"  REAL,
"taskEnd"  REAL,
"timeTaken"  REAL,
"taskDescription"  TEXT,
PRIMARY KEY ("tsID" ASC)
);

-- ----------------------------
-- Triggers structure for table tasks
-- ----------------------------
DROP TRIGGER IF EXISTS "main"."updateMain";
DELIMITER ;;
CREATE TRIGGER "updateMain" AFTER INSERT ON "tasks"
BEGIN
INSERT INTO Main (companyID, date)
VALUES (
(SELECT company.companyID FROM company WHERE company.name = "Central Systems" ),
(SELECT MAX(tasks.tsID) from tasks)
);
END
;;
DELIMITER ;
PRAGMA foreign_keys = ON;
