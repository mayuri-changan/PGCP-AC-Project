CREATE TABLE professional_details (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,

    user_id BIGINT NOT NULL UNIQUE,

    -- current_job_role VARCHAR(150),

    -- company_name VARCHAR(150),

    -- years_of_experience DECIMAL(4,1),

    experience_level ENUM(
        'STUDENT',
        'FRESHER',
        'INTERN',
        'JUNIOR',
        'MID_LEVEL',
        'SENIOR'
    ) DEFAULT 'STUDENT',

    -- current_ctc DECIMAL(12,2),

    -- expected_ctc DECIMAL(12,2),

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,

    CONSTRAINT fk_professional_user
        FOREIGN KEY (user_id)
        REFERENCES users(id)
        ON DELETE CASCADE
);