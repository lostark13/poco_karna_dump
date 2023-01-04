/*
  Copyright (c) 2020 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/
BEGIN TRANSACTION;
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 35);




DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '222' AND MNC = '01' AND NUMBER = '112';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '222' AND MNC = '01' AND NUMBER = '911';
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('222','01','112','','');
INSERT INTO "qcril_emergency_source_mcc_mnc_table" VALUES('222','01','911','','');



COMMIT TRANSACTION;
