DROP DATABASE IF EXISTS dep_smslite;

CREATE DATABASE dep_smslite;

USE dep_smslite;


CREATE TABLE student(
    id INT PRIMARY KEY  AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE provider(
    id INT PRIMARY KEY,
    provider VARCHAR(50) NOT NULL
);

DROP TABLE IF EXISTS contact;

CREATE TABLE contact(
    contact VARCHAR(15) NOT NULL,
    student_id INT NOT NULL,
    provider_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY (contact, student_id),
    CONSTRAINT fk_contact FOREIGN KEY (student_id) REFERENCES student(id),
    CONSTRAINT fk_provider FOREIGN KEY (provider_id) REFERENCES provider(id)
);