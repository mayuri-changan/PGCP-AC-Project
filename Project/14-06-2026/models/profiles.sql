CREATE TABLE profiles (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,

    user_id BIGINT NOT NULL UNIQUE,

    profile_picture_url VARCHAR(500),

    first_name VARCHAR(50) NOT NULL,
    middle_name VARCHAR(50),
    last_name VARCHAR(50) NOT NULL,

    phone_number VARCHAR(20),

    gender ENUM(
        'MALE',
        'FEMALE',
        'OTHER',
        -- 'PREFER_NOT_TO_SAY'
    ),

    date_of_birth DATE,

    bio TEXT,

    -- preferred_language VARCHAR(50),

    -- timezone VARCHAR(100),

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,

    CONSTRAINT fk_profile_user
        FOREIGN KEY (user_id)
        REFERENCES users(id)
        ON DELETE CASCADE
);