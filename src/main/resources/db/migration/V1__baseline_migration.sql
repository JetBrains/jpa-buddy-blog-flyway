CREATE TABLE post
(
    id           BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    title        VARCHAR(255),
    text         VARCHAR(10000),
    published_at TIMESTAMP WITHOUT TIME ZONE,
    CONSTRAINT pk_post PRIMARY KEY (id)
);

CREATE TABLE "user"
(
    id         BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    first_name VARCHAR(255),
    last_name  VARCHAR(255),
    email      VARCHAR(255),
    fax        VARCHAR(255),
    author_id  BIGINT,
    CONSTRAINT pk_user PRIMARY KEY (id)
);

ALTER TABLE "user"
    ADD CONSTRAINT FK_USER_ON_AUTHOR FOREIGN KEY (author_id) REFERENCES "user" (id);