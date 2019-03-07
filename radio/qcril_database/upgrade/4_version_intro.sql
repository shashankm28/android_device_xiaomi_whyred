/*
  Copyright (c) 2016 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/

BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS qcril_properties_table (property TEXT,value TEXT, PRIMARY KEY(property));
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 4);
/*<Modify for qcril_emergency_source_mcc_table start*/
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '202' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '202' AND NUMBER = '199';
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '202' AND NUMBER = '166';
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '525' AND NUMBER = '995';
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '730' AND NUMBER = '132';
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '730' AND NUMBER = '131';
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '202' AND NUMBER = '911';
INSERT INTO qcril_emergency_source_mcc_table VALUES('202','911','','');
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '414';
INSERT INTO qcril_emergency_source_mcc_table VALUES('414','191','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('414','192','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('414','199','','');
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '450';
INSERT INTO qcril_emergency_source_mcc_table VALUES('450','112','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('450','119','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('450','122','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('450','113','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('450','125','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('450','111','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('450','117','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('450','118','','');
INSERT INTO qcril_emergency_source_mcc_table VALUES('450','911','','');
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '429' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '429' AND NUMBER = '101';
DELETE FROM qcril_emergency_source_mcc_table WHERE MCC = '470' AND NUMBER = '999';
/*Modify for qcril_emergency_source_mcc_table end>*/

/*<Modify for qcril_emergency_source_voice_table start*/
DELETE FROM qcril_emergency_source_voice_table WHERE MCC = '414';
INSERT INTO qcril_emergency_source_voice_table VALUES('414','191','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('414','192','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('414','199','','full');
DELETE FROM qcril_emergency_source_voice_table WHERE MCC = '230';
INSERT INTO qcril_emergency_source_voice_table VALUES('230', '150', '','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('230', '155', '','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('230', '158', '','full');
DELETE FROM qcril_emergency_source_voice_table WHERE MCC = '255';
INSERT INTO qcril_emergency_source_voice_table VALUES('255','101','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('255','102','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('255','103','','full');
INSERT INTO qcril_emergency_source_voice_table VALUES('255','104','','full');
/*Modify for qcril_emergency_source_voice_table end>*/


/*<Modify for qcril_emergency_source_hard_mcc_table start*/
DELETE FROM qcril_emergency_source_hard_mcc_table WHERE MCC = '450';
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('450','112','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('450','119','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('450','118','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('450','111','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('450','113','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('450','117','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('450','122','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('450','125','','');
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('450','911','','');
DELETE FROM qcril_emergency_source_hard_mcc_table WHERE MCC = '730' AND NUMBER = '132';
DELETE FROM qcril_emergency_source_hard_mcc_table WHERE MCC = '730' AND NUMBER = '131';
DELETE FROM qcril_emergency_source_hard_mcc_table WHERE MCC = '202' AND NUMBER = '100';
DELETE FROM qcril_emergency_source_hard_mcc_table WHERE MCC = '202' AND NUMBER = '199';
DELETE FROM qcril_emergency_source_hard_mcc_table WHERE MCC = '202' AND NUMBER = '166';
DELETE FROM qcril_emergency_source_hard_mcc_table WHERE MCC = '202' AND NUMBER = '911';
INSERT INTO qcril_emergency_source_hard_mcc_table VALUES('202','911','','');
/*Modify for qcril_emergency_source_hard_mcc_table end>*/


/*<Modify for qcril_emergency_source_escv_nw_table start*/
DELETE FROM qcril_emergency_source_escv_nw_table WHERE MCC = '450';
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('450','','111',6);
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('450','','112',0);
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('450','','113',3);
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('450','','117',18);
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('450','','118',19);
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('450','','119',4);
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('450','','122',8);
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('450','','125',9);
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('450','','911',4);
DELETE FROM qcril_emergency_source_escv_nw_table WHERE MCC = '414';
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('414','','191',4);
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('414','','192',2);
INSERT INTO qcril_emergency_source_escv_nw_table VALUES('414','','199',1);
/*Modify for qcril_emergency_source_escv_nw_table end>*/


/*<Modify for qcril_emergency_source_mcc_mnc_table start*/
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '222' AND MNC = '99' AND NUMBER = '999';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '222' AND MNC = '99' AND NUMBER = '08';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '222' AND MNC = '99' AND NUMBER = '118';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '222' AND MNC = '99' AND NUMBER = '119';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '230' AND MNC = '03' AND NUMBER = '112';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '230' AND MNC = '03' AND NUMBER = '150';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '230' AND MNC = '03' AND NUMBER = '155';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '230' AND MNC = '03' AND NUMBER = '158';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '730' AND MNC = '02' AND NUMBER = '132';
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC = '730' AND MNC = '02' AND NUMBER = '131';
/*Modify for qcril_emergency_source_mcc_mnc_table end>*/

/*<Modify for qcril_emergency_source_voice_mcc_mnc_table start*/
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '466' AND MNC = '92' AND NUMBER = '119';
DELETE FROM qcril_emergency_source_voice_mcc_mnc_table where MCC = '466' AND MNC = '92' AND NUMBER = '110';
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('466','92','119','','');
INSERT INTO qcril_emergency_source_voice_mcc_mnc_table VALUES('466','92','110','','');
/*Modify for qcril_emergency_source_voice_mcc_mnc_table end>*/


COMMIT TRANSACTION;
