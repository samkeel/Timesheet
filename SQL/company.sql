/*
Navicat SQLite Data Transfer

Source Server         : TS
Source Server Version : 31202
Source Host           : :0

Target Server Type    : SQLite
Target Server Version : 31202
File Encoding         : 65001

Date: 2016-07-29 13:51:10
*/

PRAGMA foreign_keys = OFF;

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS "main"."company";
CREATE TABLE "company" (
"companyID"  INTEGER NOT NULL,
"name"  TEXT,
"subcontracting"  INTEGER,
PRIMARY KEY ("companyID" ASC),
CONSTRAINT "fk_subcont" FOREIGN KEY ("subcontracting") REFERENCES "subCompany" ("subID")
);
PRAGMA foreign_keys = ON;
