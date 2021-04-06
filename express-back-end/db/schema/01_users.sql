CREATE TABLE `Reports`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `Meals Claimed` TINYINT(1) NOT NULL,
    `Days Worked` INT NOT NULL,
    `Hours Worked` INT NOT NULL,
    `Miles` INT NOT NULL,
    `Trip ID` INT NOT NULL,
    `User ID` INT NOT NULL
);
ALTER TABLE
    `Reports` ADD PRIMARY KEY `reports_id_primary`(`id`);
ALTER TABLE
    `Reports` ADD UNIQUE `reports_trip id_unique`(`Trip ID`);
ALTER TABLE
    `Reports` ADD UNIQUE `reports_user id_unique`(`User ID`);
CREATE TABLE `Trips`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `Date` TIMESTAMP NOT NULL,
    `Start Time` TIME NOT NULL,
    `User ID` INT NOT NULL
);
ALTER TABLE
    `Trips` ADD PRIMARY KEY `trips_id_primary`(`id`);
ALTER TABLE
    `Trips` ADD UNIQUE `trips_user id_unique`(`User ID`);
CREATE TABLE `Trips Summaries`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `Date End` TIMESTAMP NOT NULL,
    `End Time` TIME NOT NULL,
    `Route ID` INT NOT NULL,
    `Trip ID` INT NOT NULL
);
ALTER TABLE
    `Trips Summaries` ADD PRIMARY KEY `trips summaries_id_primary`(`id`);
ALTER TABLE
    `Trips Summaries` ADD UNIQUE `trips summaries_trip id_unique`(`Trip ID`);
CREATE TABLE `Users`(
    `id` VARCHAR(255) NOT NULL,
    `First & Last` TEXT NOT NULL,
    `Email Address` TEXT NOT NULL,
    `Password` TEXT NOT NULL,
    `Service Class` TINYINT(1) NOT NULL,
    `Tracking Method` TINYINT(1) NOT NULL,
    `Home Yard` VARCHAR(255) NOT NULL,
    `Cert Expiration` TIMESTAMP NOT NULL
);
ALTER TABLE
    `Users` ADD PRIMARY KEY `users_id_primary`(`id`);
ALTER TABLE
    `Trips Summaries` ADD CONSTRAINT `trips summaries_trip id_foreign` FOREIGN KEY(`Trip ID`) REFERENCES `Trips`(`id`);
ALTER TABLE
    `Reports` ADD CONSTRAINT `reports_trip id_foreign` FOREIGN KEY(`Trip ID`) REFERENCES `Trips`(`id`);
ALTER TABLE
    `Reports` ADD CONSTRAINT `reports_user id_foreign` FOREIGN KEY(`User ID`) REFERENCES `Users`(`id`);
ALTER TABLE
    `Trips` ADD CONSTRAINT `trips_user id_foreign` FOREIGN KEY(`User ID`) REFERENCES `Users`(`id`);