-- TRUNCATE all tables to ensure that there are no
-- data in them so we start with a fresh set of data
TRUNCATE blogful_articles, blogful_comments, blogful_users RESTART IDENTITY CASCADE;

INSERT INTO blogful_users (fullname, username, password, nickname, date_created)
VALUES
    ('Lana','Lana_OG1', '123456', 'Big L', '2019-01-03T00:00:00.000Z'),
    ('SLana','SLana_OG1', 'S123456', 'SBig L', '2019-01-03T00:00:00.000Z'),
    ('BLana','BLana_OG1', 'B123456', 'BBig L', '2019-01-03T00:00:00.000Z');

INSERT INTO blogful_articles (title, content, date_published, style, author)
VALUES
    ('Small Rocks', 'contento', '2019-01-03T00:00:00.000Z', 'Story', 1 ),
    ('Medium Rocks', 'contento2', '2019-01-03T00:00:00.000Z', 'Story', 2 ),
    ('Large Rocks', 'contento3', '2019-01-03T00:00:00.000Z', 'Story', 3 );
  
-- UPDATE note SET folder_id = 1 WHERE id = 1;
-- UPDATE note SET folder_id = 2 WHERE id = 2;
-- UPDATE note SET folder_id = 3 WHERE id = 3;

INSERT INTO blogful_comments (text, date_commented, article_id, user_id)
VALUES
    ('first', '2019-01-03T00:00:00.000Z', 1,2),
    ('omg u guys', '2018-08-15T23:00:00.000Z', 2,3),
    ('loved it', '2018-03-01T00:00:00.000Z',3,1);
