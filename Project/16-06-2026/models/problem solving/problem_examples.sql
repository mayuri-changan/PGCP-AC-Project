CREATE TABLE problem_examples (

    id BIGINT PRIMARY KEY AUTO_INCREMENT,

    problem_id BIGINT NOT NULL,

    example_order INT NOT NULL,

    input_data TEXT NOT NULL,

    output_data TEXT NOT NULL,

    explanation TEXT,

    FOREIGN KEY(problem_id)
        REFERENCES problems(id)
        ON DELETE CASCADE
);