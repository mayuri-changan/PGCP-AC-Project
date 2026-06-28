CREATE TABLE problem_articles (

    id BIGINT PRIMARY KEY AUTO_INCREMENT,

    problem_id BIGINT NOT NULL,

    article_id BIGINT NOT NULL,

    FOREIGN KEY(problem_id)
        REFERENCES problems(id)
        ON DELETE CASCADE,

    FOREIGN KEY(article_id)
        REFERENCES articles(id)
        ON DELETE CASCADE
);