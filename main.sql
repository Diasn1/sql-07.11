CREATE TABLE tasks (
    "id" INT PRIMARY KEY AUTO_INCREMENT,
    "name" VARCHAR(255) NOT NULL,
    "created" DATE NOT NULL,
    "done_date" DATE
);

INSERT INTO tasks ("name", "created") VALUES ('Описание задачи 1', CURDATE());

UPDATE tasks SET "done_date" = CURDATE() WHERE "id" = 1;

DELETE FROM tasks WHERE "id" = 1;

SELECT * FROM tasks;

SELECT * FROM tasks WHERE "done_date" IS NOT NULL;

SELECT * FROM tasks WHERE "done_date" IS NULL;

SELECT * FROM tasks WHERE "created" < CURDATE() - INTERVAL 3 DAY;
