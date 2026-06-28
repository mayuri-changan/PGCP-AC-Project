CREATE TABLE problem_videos (

    id BIGINT PRIMARY KEY AUTO_INCREMENT,

    problem_id BIGINT NOT NULL,

    video_id BIGINT NOT NULL,

    FOREIGN KEY(problem_id)
        REFERENCES problems(id)
        ON DELETE CASCADE,

    FOREIGN KEY(video_id)
        REFERENCES video_resources(id)
        ON DELETE CASCADE
);