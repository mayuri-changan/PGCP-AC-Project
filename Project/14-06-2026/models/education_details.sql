CREATE TABLE education_details (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,

    user_id BIGINT NOT NULL,

    institute_name VARCHAR(255) NOT NULL,

    degree VARCHAR(100),

    branch VARCHAR(100),

    -- current_year INT,

    graduation_year INT,

    -- cgpa DECIMAL(4,2),

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,

    CONSTRAINT fk_education_user
        FOREIGN KEY (user_id)
        REFERENCES users(id)
        ON DELETE CASCADE
);