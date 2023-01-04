/*
  Copyright (c) 2020 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/
BEGIN TRANSACTION;
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 33);

DELETE FROM  qcril_emergency_source_mcc_table where MCC = '213';


INSERT INTO "qcril_emergency_source_mcc_table" VALUES('213','110','','');
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('213','115','','');
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('213','116','','');
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('213','117','','');
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('213','118','','');
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('213','175','','');
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('213','181','','');


DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '510' AND MNC = '11' AND NUMBER = '115';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '510' AND MNC = '11' AND NUMBER = '119';
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('510','11','115','','');
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('510','11','119','','');

DELETE FROM qcril_emergency_source_escv_nw_table where MCC = '257';
INSERT INTO "qcril_emergency_source_escv_nw_table" VALUES('257','01','101','4');
INSERT INTO "qcril_emergency_source_escv_nw_table" VALUES('257','01','102','1');
INSERT INTO "qcril_emergency_source_escv_nw_table" VALUES('257','01','103','2');
INSERT INTO "qcril_emergency_source_escv_nw_table" VALUES('257','01','104','8');

COMMIT TRANSACTION;
