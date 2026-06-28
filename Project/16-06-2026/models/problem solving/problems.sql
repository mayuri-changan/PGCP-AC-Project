CREATE TABLE problems (

    id BIGINT PRIMARY KEY AUTO_INCREMENT,

    topic_id BIGINT NOT NULL,

    title VARCHAR(255) NOT NULL,

    slug VARCHAR(255) NOT NULL UNIQUE,

    difficulty ENUM(
        'EASY',
        'MEDIUM',
        'HARD'
    ) NOT NULL,

    description LONGTEXT NOT NULL,

    created_by BIGINT,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,

    FOREIGN KEY(topic_id)
        REFERENCES topics(id),

    FOREIGN KEY(created_by)
        REFERENCES users(id)
);