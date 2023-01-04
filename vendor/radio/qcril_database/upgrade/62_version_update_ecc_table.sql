/*
  Copyright (c) 2020 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/
BEGIN TRANSACTION;
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 62);

DELETE FROM qcril_emergency_source_mcc_table where MCC = '272' AND NUMBER = '1913';

DELETE FROM qcril_emergency_source_hard_mcc_table where MCC = '272' AND NUMBER = '1913';

COMMIT TRANSACTION;
