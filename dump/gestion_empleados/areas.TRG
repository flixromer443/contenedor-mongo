TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`%` TRIGGER `update_user` BEFORE DELETE ON `areas` FOR EACH ROW UPDATE users SET area_id=0 WHERE area_id=OLD.id'
sql_modes=1436549152
definers='root@%'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_unicode_ci'
db_cl_names='utf8_spanish_ci'
created=163208289453
