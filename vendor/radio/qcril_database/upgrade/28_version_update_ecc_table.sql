/*
  Copyright (c) 2020 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/
BEGIN TRANSACTION;
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 28);


DELETE FROM qcril_emergency_source_voice_table where MCC = '414' ;
DELETE FROM qcril_emergency_source_escv_nw_table  where MCC = '414' ;

DELETE FROM qcril_emergency_source_hard_mcc_table  where MCC = '722' AND NUMBER ='100';
DELETE FROM qcril_emergency_source_hard_mcc_table  where MCC = '722' AND NUMBER ='107';



INSERT INTO "qcril_emergency_source_voice_table" VALUES('414','191','','full');
INSERT INTO "qcril_emergency_source_voice_table" VALUES('414','192','','full');
INSERT INTO "qcril_emergency_source_voice_table" VALUES('414','199','','full');

INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('722','100','','');
INSERT INTO "qcril_emergency_source_hard_mcc_table" VALUES('722','107','','');


COMMIT TRANSACTION;