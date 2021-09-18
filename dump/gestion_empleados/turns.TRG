TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`%` TRIGGER `create_schedules` AFTER INSERT ON `turns` FOR EACH ROW INSERT INTO schedules(turn_id) VALUES(NEW.id)' 'CREATE DEFINER=`root`@`%` TRIGGER `delete_schedules` AFTER DELETE ON `turns` FOR EACH ROW DELETE FROM schedules WHERE turn_id=OLD.id' 'CREATE DEFINER=`root`@`%` TRIGGER `delete_turn_id` AFTER DELETE ON `turns` FOR EACH ROW UPDATE working_information SET id_turno=0 WHERE id_turno=OLD.id'
sql_modes=524288 524288 524288
definers='root@%' 'root@%' 'root@%'
client_cs_names='utf8mb4' 'utf8mb4' 'utf8mb4'
connection_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci'
db_cl_names='utf8_spanish_ci' 'utf8_spanish_ci' 'utf8_spanish_ci'
created=163139840066 163139840067 163139840068
