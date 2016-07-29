/*
Navicat SQLite Data Transfer

Source Server         : TS
Source Server Version : 31202
Source Host           : :0

Target Server Type    : SQLite
Target Server Version : 31202
File Encoding         : 65001

Date: 2016-07-29 13:51:24
*/

PRAGMA foreign_keys = OFF;

-- ----------------------------
-- Table structure for subCompany
-- ----------------------------
DROP TABLE IF EXISTS "main"."subCompany";
CREATE TABLE "subCompany" (
"subID"  INTEGER NOT NULL,
"companyName"  TEXT,
PRIMARY KEY ("subID")
);
PRAGMA foreign_keys = ON;
