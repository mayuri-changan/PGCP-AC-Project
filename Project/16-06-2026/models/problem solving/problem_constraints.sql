CREATE TABLE problem_constraints (

    id BIGINT PRIMARY KEY AUTO_INCREMENT,

    problem_id BIGINT NOT NULL,

    constraint_text VARCHAR(255) NOT NULL,

    FOREIGN KEY(problem_id)
        REFERENCES problems(id)
        ON DELETE CASCADE
);