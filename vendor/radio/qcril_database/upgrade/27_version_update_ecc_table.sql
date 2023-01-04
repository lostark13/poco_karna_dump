/*
  Copyright (c) 2020 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/
BEGIN TRANSACTION;
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 27);

DELETE FROM qcril_emergency_source_voice_table where MCC = '425' ;

DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '425' ;
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('425','03','100','','');
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('425','03','101','','');
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('425','03','102','','');
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('425','03','1221','','');
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('425','01','100','','');
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('425','01','101','','');
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('425','01','102','','');
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('425','01','1221','',''); 
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('425','02','100','','');
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('425','02','101','','');
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('425','02','102','','');
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('425','02','1221','',''); 
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('425','77','100','','');
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('425','77','101','','');
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('425','77','102','','');
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('425','77','1221','','');
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('425','09','100','','');
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('425','09','101','','');
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('425','09','102','','');
INSERT INTO  qcril_emergency_source_voice_mcc_mnc_table  VALUES('425','09','1221','','');


COMMIT TRANSACTION;