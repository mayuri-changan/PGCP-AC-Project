CREATE TABLE user_problem_status (

    user_id BIGINT NOT NULL,

    problem_id BIGINT NOT NULL,

    status ENUM(
        'NOT_STARTED',
        'ATTEMPTED',
        'SOLVED'
    ) DEFAULT 'NOT_STARTED',

    solved_at TIMESTAMP NULL,

    PRIMARY KEY(user_id, problem_id),

    FOREIGN KEY(user_id)
        REFERENCES users(id)
        ON DELETE CASCADE,

    FOREIGN KEY(problem_id)
        REFERENCES problems(id)
        ON DELETE CASCADE
);