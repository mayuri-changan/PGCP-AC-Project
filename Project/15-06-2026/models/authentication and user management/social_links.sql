CREATE TABLE social_links (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,

    user_id BIGINT NOT NULL UNIQUE,

    github_url VARCHAR(255),

    linkedin_url VARCHAR(255),

    portfolio_url VARCHAR(255),

    leetcode_url VARCHAR(255),

    -- codeforces_url VARCHAR(255),

    -- codechef_url VARCHAR(255),

    -- hackerrank_url VARCHAR(255),

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,

    CONSTRAINT fk_social_user
        FOREIGN KEY (user_id)
        REFERENCES users(id)
        ON DELETE CASCADE
);