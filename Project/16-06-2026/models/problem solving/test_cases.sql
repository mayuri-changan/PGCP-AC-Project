CREATE TABLE test_cases (

    id BIGINT PRIMARY KEY AUTO_INCREMENT,

    problem_id BIGINT NOT NULL,

    input_data LONGTEXT NOT NULL,

    expected_output LONGTEXT NOT NULL,

    is_hidden BOOLEAN DEFAULT FALSE,

    FOREIGN KEY(problem_id)
        REFERENCES problems(id)
        ON DELETE CASCADE
);