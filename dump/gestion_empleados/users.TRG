TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`%` TRIGGER `delete_id_dp` AFTER DELETE ON `users` FOR EACH ROW delete from personal_data where id=old.personal_data_id' 'CREATE DEFINER=`root`@`%` TRIGGER `delete_id_il` AFTER DELETE ON `users` FOR EACH ROW delete from working_information where id=old.working_information_id'
sql_modes=524288 524288
definers='root@%' 'root@%'
client_cs_names='utf8mb4' 'utf8mb4'
connection_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci'
db_cl_names='utf8_spanish_ci' 'utf8_spanish_ci'
created=163139840071 163139840072
