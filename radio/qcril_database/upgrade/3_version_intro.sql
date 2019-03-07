/*
  Copyright (c) 2016 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/

BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT,value TEXT, PRIMARY KEY(property));
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 3);

DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '230' AND MNC = '03' AND NUMBER = '112';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '230' AND MNC = '03' AND NUMBER = '150';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '230' AND MNC = '03' AND NUMBER = '155';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '230' AND MNC = '03' AND NUMBER = '158';

DELETE FROM qcril_emergency_source_voice_table WHERE MCC = '230' AND NUMBER = '150';
INSERT INTO qcril_emergency_source_voice_table VALUES('230', '150', '','full');

DELETE FROM qcril_emergency_source_voice_table WHERE MCC = '230' AND NUMBER = '155';
INSERT INTO qcril_emergency_source_voice_table VALUES('230', '155', '','full');

DELETE FROM qcril_emergency_source_voice_table WHERE MCC = '230' AND NUMBER = '158';
INSERT INTO qcril_emergency_source_voice_table VALUES('230', '158', '','full');

DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '730' AND NUMBER = '132';
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '730' AND NUMBER = '131';
DELETE FROM qcril_emergency_source_hard_mcc_table WHERE MCC = '730' AND NUMBER = '132';
DELETE FROM qcril_emergency_source_hard_mcc_table WHERE MCC = '730' AND NUMBER = '131';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '730' AND MNC = '02' AND NUMBER = '132';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '730' AND MNC = '02' AND NUMBER = '131';

COMMIT TRANSACTION;
