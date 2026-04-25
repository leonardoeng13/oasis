-- Instagram hashtag index: extracted from post content at create_post time
CREATE TABLE IF NOT EXISTS hashtag (
    hashtag_id INTEGER PRIMARY KEY AUTOINCREMENT,
    post_id INTEGER NOT NULL,
    tag TEXT NOT NULL,
    FOREIGN KEY (post_id) REFERENCES post(post_id)
);
CREATE INDEX IF NOT EXISTS idx_hashtag_tag ON hashtag(tag);
