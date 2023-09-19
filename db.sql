CREATE DATABASE db_lp;
USE db_lp;

CREATE TABLE users(
	`id` INT AUTO_INCREMENT,
	`name` VARCHAR(255),
	`username` VARCHAR(255),
	`password` VARCHAR(255),
	`role` INT NOT NULL DEFAULT 1,
	PRIMARY KEY (`id`)
);

-- anggota
INSERT INTO users (`name`, `username`, `password`) VALUES ("User", "user", "user");
-- admin
INSERT INTO users (`name`, `username`, `password`, `role`) VALUES ("Admin", "admin", "admin", 2);

SELECT * FROM users;

CREATE TABLE reports(
	`user_id` INT NOT NULL,
	`id` INT AUTO_INCREMENT,
	`title` VARCHAR(255),
	`description` VARCHAR(255),
	`status` INT NOT NULL DEFAULT 0,
	`created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`id`)
);


INSERT INTO reports(`user_id`, `title`, `description`) VALUES (1, "Meja Belajar", "Kaki meja patah.");
SELECT * FROM reports;


SELECT * FROM reports ORDER BY STATUS, created_at DESC;