INSERT INTO users (email, password, name, role)
VALUES ('admin@gmail.com', 'admin', 'Administrator', 'ROLE_ADMIN'),
       ('nick@gmail.com', 'secret', 'nick', 'ROLE_USER');

INSERT INTO short_urls
(short_key, original_url, created_by, created_at, expires_at, is_private, click_count)
VALUES
    ('ghA12x', 'https://github.com/spring-projects/spring-boot', 1, TIMESTAMP '2025-01-05 10:15:00', NULL, FALSE, 142),

    ('spB34y', 'https://spring.io/guides/gs/spring-boot', 2, TIMESTAMP '2025-01-07 09:30:00', NULL, FALSE, 95),

    ('dkC56z', 'https://docs.docker.com/get-started/', 3, TIMESTAMP '2025-01-10 14:20:00', NULL, FALSE, 213),

    ('awD78p', 'https://aws.amazon.com/ec2/', 1, TIMESTAMP '2025-01-12 11:45:00', NULL, FALSE, 84),

    ('pgE90q', 'https://www.postgresql.org/docs/current/', 2, TIMESTAMP '2025-01-15 08:10:00', NULL, FALSE, 176),

    ('jbF11r', 'https://www.baeldung.com/spring-security-login', 1, TIMESTAMP '2025-01-18 16:00:00', NULL, TRUE, 29),

    ('doG22s', 'https://www.digitalocean.com/community/tutorials', 3, TIMESTAMP '2025-01-20 13:40:00', NULL, FALSE, 101),

    ('mdH33t', 'https://developer.mozilla.org/en-US/docs/Web/JavaScript', 2, TIMESTAMP '2025-01-22 17:25:00', NULL, FALSE, 64),

    ('orJ44u', 'https://www.oracle.com/java/technologies/downloads/', 1, TIMESTAMP '2025-01-25 12:05:00', NULL, FALSE, 158),

    ('reK55v', 'https://redis.io/docs/latest/', 3, TIMESTAMP '2025-01-28 09:50:00', NULL, FALSE, 88),

    ('kfL66w', 'https://kafka.apache.org/documentation/', 2, TIMESTAMP '2025-02-02 15:15:00', NULL, FALSE, 134),

    ('ksM77x', 'https://kubernetes.io/docs/home/', 1, TIMESTAMP '2025-02-05 18:45:00', NULL, FALSE, 219),

    ('htN88y', 'https://hibernate.org/orm/documentation/', 3, TIMESTAMP '2025-02-08 10:20:00', NULL, FALSE, 73),

    ('msP99z', 'https://learn.microsoft.com/en-us/azure/', 2, TIMESTAMP '2025-02-10 11:55:00', NULL, FALSE, 97),

    ('gcQ10a', 'https://cloud.google.com/docs', 1, TIMESTAMP '2025-02-14 14:35:00', NULL, TRUE, 18),

    ('cfR21b', 'https://docs.github.com/en/actions', 3, TIMESTAMP '2025-02-17 08:45:00', NULL, FALSE, 147),

    ('tfS32c', 'https://www.tensorflow.org/tutorials', 2, TIMESTAMP '2025-02-20 16:30:00', NULL, FALSE, 81),

    ('ptT43d', 'https://pytorch.org/tutorials/', 1, TIMESTAMP '2025-02-24 13:00:00', NULL, FALSE, 193),

    ('faU54e', 'https://fastapi.tiangolo.com/', 2, TIMESTAMP '2025-02-27 09:40:00', NULL, FALSE, 109),

    ('smV65f', 'https://spring.io/projects/spring-security', 3, TIMESTAMP '2025-03-01 15:10:00', NULL, FALSE, 127);