/*
  Copyright (c) 2020 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/
BEGIN TRANSACTION;
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 31);
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table  where MCC = '401' AND NUMBER = '113';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table  where MCC = '401' AND NUMBER = '114';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table  where MCC = '401' AND NUMBER = '115';


COMMIT TRANSACTION;
