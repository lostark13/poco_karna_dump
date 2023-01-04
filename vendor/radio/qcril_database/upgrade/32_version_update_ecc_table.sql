/*
  Copyright (c) 2020 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/
BEGIN TRANSACTION;
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 32);

DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '510' AND MNC = '09' AND NUMBER = '119';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '510' AND MNC = '09' AND NUMBER = '129';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '510' AND MNC = '01' AND NUMBER = '129';
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('510','09','119','','');
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('510','09','129','','');
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('510','01','129','','');

DELETE FROM qcril_emergency_source_voice_table where MCC = '424';
INSERT INTO "qcril_emergency_source_voice_table" VALUES('424','991','','full');
INSERT INTO "qcril_emergency_source_voice_table" VALUES('424','992','','full');
INSERT INTO "qcril_emergency_source_voice_table" VALUES('424','996','','full');
INSERT INTO "qcril_emergency_source_voice_table" VALUES('424','116111','','full');

DELETE FROM qcril_emergency_source_mcc_table where MCC = '424' AND NUMBER = '991';
DELETE FROM qcril_emergency_source_mcc_table where MCC = '424' AND NUMBER = '992';
DELETE FROM qcril_emergency_source_mcc_table where MCC = '424' AND NUMBER = '996';
DELETE FROM qcril_emergency_source_mcc_table where MCC = '424' AND NUMBER = '116111';
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('424','991','','');
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('424','992','','');
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('424','996','','');
INSERT INTO "qcril_emergency_source_mcc_table" VALUES('424','116111','','');



DELETE FROM qcril_emergency_source_escv_nw_table  where MCC = '414';
INSERT INTO "qcril_emergency_source_escv_nw_table" VALUES('414','','191',4);
INSERT INTO "qcril_emergency_source_escv_nw_table" VALUES('414','','192',2);
INSERT INTO "qcril_emergency_source_escv_nw_table" VALUES('414','','199',1);




COMMIT TRANSACTION;
