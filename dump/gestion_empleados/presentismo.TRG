TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`%` TRIGGER `checkin` AFTER INSERT ON `presentismo` FOR EACH ROW INSERT INTO temp(id_presentismo,id_usuario) VALUES(NEW.id,NEW.id_usuario)' 'CREATE DEFINER=`root`@`%` TRIGGER `checkout` AFTER UPDATE ON `presentismo` FOR EACH ROW delete from temp WHERE id_presentismo=OLD.id'
sql_modes=524288 524288
definers='root@%' 'root@%'
client_cs_names='utf8mb4' 'utf8mb4'
connection_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci'
db_cl_names='utf8_spanish_ci' 'utf8_spanish_ci'
created=163139840049 163139840049
