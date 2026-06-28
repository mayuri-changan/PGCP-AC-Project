CREATE TABLE articles (

    id BIGINT PRIMARY KEY AUTO_INCREMENT,

    topic_id BIGINT NOT NULL,

    author_id BIGINT NOT NULL,

    title VARCHAR(255) NOT NULL,

    slug VARCHAR(255) NOT NULL UNIQUE,

    summary TEXT,

    content LONGTEXT NOT NULL,

    -- difficulty ENUM(
    --     'BEGINNER',
    --     'INTERMEDIATE',
    --     'ADVANCED'
    -- ) DEFAULT 'BEGINNER',

    is_published BOOLEAN DEFAULT TRUE,

    -- view_count BIGINT DEFAULT 0,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,

    CONSTRAINT fk_article_topic
        FOREIGN KEY (topic_id)
        REFERENCES topics(id),

    CONSTRAINT fk_article_author
        FOREIGN KEY (author_id)
        REFERENCES users(id)
);