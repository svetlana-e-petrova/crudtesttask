CREATE TABLE `test`.`user` (
  `id` INT(8) NOT NULL AUTO_INCREMENT,
  `age` INT NULL,
  `name` VARCHAR(256) NULL,
  `created_date` DATE NULL,
  `admin` TINYINT(1) NULL,
  PRIMARY KEY (`id`));

INSERT INTO
	`test`.`user` (`name`, `age`, `admin`, `created_date`)
VALUES
('Fry', '25', '0', '2999-12-31'),
('Leela', '25', '0', '2990-07-24'),
('Bender', '1057', '0', '2016-08-25'),
('DrZoidberg', '50', '0', '2995-09-24'),
('Amy', '25', '0', '2999-10-24'),
('Nixon', '1097', '0', '2000-05-24'),
('ProfessorFarnsworth', '160', '0', '2990-06-24'),
('ZappBrannigan', '40', '0', '2990-07-24'),
('Kif', '40', '0', '2990-08-22'),
('Nibbler', '14', '0', '2990-09-12'),
('Morbo', '15', '0', '2990-03-24'),
('Linda', '30', '0', '2990-03-28'),
('Mom', '100', '0', '2990-03-10'),
('Vernstrum', '100', '0', '2990-05-07'),
('BubblegumTate', '18', '0', '2990-05-24'),
('Cubert', '18', '0', '2990-05-09'),
('Calculon', '18', '0', '2990-06-14'),
('Wong', '35', '0', '2990-05-20'),
('Wong', '30', '0', '2991-01-13'),
('Scruffy', '18', '0', '2990-05-03'),
('Robotdevil', '2000', '0', '2990-05-29'),
('Elzar', '18', '0', '2990-05-19'),
('Lrrr', '50', '0', '2990-05-18'),
('Labarbara', '18', '0', '2990-05-02'),
('Flexo', '18', '0', '2990-05-15'),
('Hypnotoad', '18', '1', '2990-05-30'),
('Ipgy', '18', '0', '2990-05-24'),
('Dwight', '18', '0', '2990-05-01'),
('Sal', '18', '0', '2990-05-15'),
('Roberto', '18', '0', '2990-05-27'),
('Smitty', '18', '0', '2990-05-30'),
('MayorPoopenmeyer', '18', '0', '2990-05-06'),
('Donbot', '18', '0', '2990-05-17'),
('Admin', '100', '1', '2000-01-01');