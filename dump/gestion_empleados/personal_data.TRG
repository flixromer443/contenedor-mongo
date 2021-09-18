TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`%` TRIGGER `create_data_of_user` AFTER INSERT ON `personal_data` FOR EACH ROW insert into users(id,personal_data_id,working_information_id) values(NEW.id,NEW.id,NEW.id)' 'CREATE DEFINER=`root`@`%` TRIGGER `create_working_information` AFTER INSERT ON `personal_data` FOR EACH ROW insert into working_information(id,fecha_de_contratacion) values(NEW.id,NOW())'
sql_modes=524288 524288
definers='root@%' 'root@%'
client_cs_names='utf8mb4' 'utf8mb4'
connection_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci'
db_cl_names='utf8_spanish_ci' 'utf8_spanish_ci'
created=163139840038 163139840039
