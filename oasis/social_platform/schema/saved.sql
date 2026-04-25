-- Instagram saved/bookmarked posts
CREATE TABLE IF NOT EXISTS saved (
    saved_id INTEGER PRIMARY KEY AUTOINCREMENT,
    post_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    saved_at DATETIME,
    UNIQUE(post_id, user_id),
    FOREIGN KEY (post_id) REFERENCES post(post_id),
    FOREIGN KEY (user_id) REFERENCES user(user_id)
);
