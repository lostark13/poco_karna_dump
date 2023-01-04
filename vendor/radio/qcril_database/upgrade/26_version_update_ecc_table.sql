/*
  Copyright (c) 2020 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/
BEGIN TRANSACTION;
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 26);



DELETE FROM qcril_emergency_source_mcc_table where MCC = '452';
INSERT INTO  qcril_emergency_source_mcc_table  VALUES('452','113','','');
INSERT INTO  qcril_emergency_source_mcc_table  VALUES('452','114','','');
INSERT INTO  qcril_emergency_source_mcc_table  VALUES('452','115','','');

COMMIT TRANSACTION;