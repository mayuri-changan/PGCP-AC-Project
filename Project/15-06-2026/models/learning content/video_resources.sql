CREATE TABLE video_resources (

    id BIGINT PRIMARY KEY AUTO_INCREMENT,

    topic_id BIGINT NOT NULL,

    added_by BIGINT NOT NULL,

    title VARCHAR(255) NOT NULL,

    description TEXT,

    video_url VARCHAR(500) NOT NULL,

    platform ENUM(
        'YOUTUBE',
        'UDACITY',
        'UDEMY',
        'COURSERA',
        'OTHER'
    ) DEFAULT 'YOUTUBE',

    duration_minutes INT,

    -- difficulty ENUM(
    --     'BEGINNER',
    --     'INTERMEDIATE',
    --     'ADVANCED'
    -- ) DEFAULT 'BEGINNER',

    is_active BOOLEAN DEFAULT TRUE,

    -- view_count BIGINT DEFAULT 0,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,

    CONSTRAINT fk_video_topic
        FOREIGN KEY (topic_id)
        REFERENCES topics(id),

    CONSTRAINT fk_video_creator
        FOREIGN KEY (added_by)
        REFERENCES users(id)
);