/*
  Copyright (c) 2020 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/
BEGIN TRANSACTION;
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 65);

DELETE FROM qcril_emergency_source_mcc_table where MCC = '250';
DELETE FROM qcril_emergency_source_hard_mcc_table where MCC = '250';
DELETE FROM qcril_emergency_source_voice_table where MCC = '250';

INSERT INTO qcril_emergency_source_mcc_table VALUES('250','112','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('250','911','','');

INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('250','112','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('250','911','','');

COMMIT TRANSACTION;
