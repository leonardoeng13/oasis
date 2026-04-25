-- Facebook closed-group join requests (requires admin approval)
CREATE TABLE IF NOT EXISTS group_join_request (
    request_id INTEGER PRIMARY KEY AUTOINCREMENT,
    group_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    status TEXT NOT NULL DEFAULT 'pending',  -- pending | approved | rejected
    created_at DATETIME,
    updated_at DATETIME,
    UNIQUE(group_id, user_id),
    FOREIGN KEY (group_id) REFERENCES chat_group(group_id),
    FOREIGN KEY (user_id) REFERENCES user(user_id)
);
