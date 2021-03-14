CREATE TABLE IF NOT EXISTS `db_dev_doctor_labelling`.`user` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(255) NULL DEFAULT NULL,
  `name` VARCHAR(255) NULL DEFAULT NULL,
  `password` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE TABLE IF NOT EXISTS `db_dev_doctor_labelling`.`profile` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE TABLE IF NOT EXISTS `db_dev_doctor_labelling`.`user_profiles` (
  `user_id` BIGINT NOT NULL,
  `profiles_id` BIGINT NOT NULL,
  INDEX `FK7bauo77qnjbrc8yjqwrlc8o5k` (`profiles_id` ASC) VISIBLE,
  INDEX `FK4np1ktrt8iwtncc4otmhfd6yn` (`user_id` ASC) VISIBLE,
  CONSTRAINT `FK4np1ktrt8iwtncc4otmhfd6yn`
    FOREIGN KEY (`user_id`)
    REFERENCES `db_dev_doctor_labelling`.`user` (`id`),
  CONSTRAINT `FK7bauo77qnjbrc8yjqwrlc8o5k`
    FOREIGN KEY (`profiles_id`)
    REFERENCES `db_dev_doctor_labelling`.`profile` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE TABLE IF NOT EXISTS `db_dev_doctor_labelling`.`cases` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `date_create` DATETIME NULL DEFAULT NULL,
  `electronic_health_record` TEXT NULL DEFAULT NULL,
  `state` VARCHAR(255) NULL DEFAULT NULL,
  `time_to_label` DATETIME NULL DEFAULT NULL,
  `doctor_id` BIGINT NULL DEFAULT NULL,
  `time_in_minutes_to_label` BIGINT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `FK3xctv7vqucw0q1nv8ni2eoii1` (`doctor_id` ASC) VISIBLE,
  CONSTRAINT `FK3xctv7vqucw0q1nv8ni2eoii1`
    FOREIGN KEY (`doctor_id`)
    REFERENCES `db_dev_doctor_labelling`.`user` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE TABLE IF NOT EXISTS `db_dev_doctor_labelling`.`cases_label` (
  `case_id` BIGINT NOT NULL,
  `label_id` VARCHAR(255) NULL DEFAULT NULL,
  INDEX `FK5p7bes35n0qk69s9m5c7m4dpu` (`case_id` ASC) VISIBLE,
  CONSTRAINT `FK5p7bes35n0qk69s9m5c7m4dpu`
    FOREIGN KEY (`case_id`)
    REFERENCES `db_dev_doctor_labelling`.`cases` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci