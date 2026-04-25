-- Reactions table for LinkedIn (celebrate/support/insightful/funny/love/like)
-- and Facebook (like/love/haha/wow/sad/angry)
CREATE TABLE IF NOT EXISTS reaction (
    reaction_id INTEGER PRIMARY KEY AUTOINCREMENT,
    post_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    reaction_type TEXT NOT NULL DEFAULT 'like',
    created_at DATETIME,
    UNIQUE(post_id, user_id),
    FOREIGN KEY (post_id) REFERENCES post(post_id),
    FOREIGN KEY (user_id) REFERENCES user(user_id)
);
