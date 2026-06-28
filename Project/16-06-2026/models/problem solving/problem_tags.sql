CREATE TABLE problem_tags (

    problem_id BIGINT NOT NULL,

    tag_id BIGINT NOT NULL,

    PRIMARY KEY(problem_id, tag_id),

    FOREIGN KEY(problem_id)
        REFERENCES problems(id)
        ON DELETE CASCADE,

    FOREIGN KEY(tag_id)
        REFERENCES tags(id)
        ON DELETE CASCADE
);