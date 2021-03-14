CREATE TABLE IF NOT EXISTS `db_dev_doctor_label`.`label` (
  `id` VARCHAR(255) NOT NULL,
  `date_create` DATETIME NULL DEFAULT NULL,
  `description` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci