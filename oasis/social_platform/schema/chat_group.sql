CREATE TABLE IF NOT EXISTS `chat_group` (
    group_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    privacy TEXT NOT NULL DEFAULT 'public',  -- public | closed | secret
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);
