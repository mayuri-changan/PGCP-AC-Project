CREATE TABLE submissions (

    id BIGINT PRIMARY KEY AUTO_INCREMENT,

    user_id BIGINT NOT NULL,

    problem_id BIGINT NOT NULL,

    language VARCHAR(50) NOT NULL,

    source_code LONGTEXT NOT NULL,

    status ENUM(
        'ACCEPTED',
        'WRONG_ANSWER',
        'TIME_LIMIT_EXCEEDED',
        'RUNTIME_ERROR',
        'COMPILATION_ERROR'
    ) NOT NULL,

    execution_time DECIMAL(10,2),

    memory_used DECIMAL(10,2),

    submitted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY(user_id)
        REFERENCES users(id),

    FOREIGN KEY(problem_id)
        REFERENCES problems(id)
);