/*
Navicat SQLite Data Transfer

Source Server         : TS
Source Server Version : 31202
Source Host           : :0

Target Server Type    : SQLite
Target Server Version : 31202
File Encoding         : 65001

Date: 2016-07-29 13:51:17
*/

PRAGMA foreign_keys = OFF;

-- ----------------------------
-- Table structure for Main
-- ----------------------------
DROP TABLE IF EXISTS "main"."Main";
CREATE TABLE "Main" (
"entryID"  INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
"companyID"  INTEGER NOT NULL DEFAULT 1,
"date"  INTEGER,
CONSTRAINT "fk_comp" FOREIGN KEY ("companyID") REFERENCES "company" ("companyID"),
CONSTRAINT "fk_date" FOREIGN KEY ("date") REFERENCES "tasks" ("tsID"),
CONSTRAINT "UniqueDate" UNIQUE ("date") ON CONFLICT IGNORE
);
PRAGMA foreign_keys = ON;
