-- LinkedIn bidirectional connections (pending → accepted)
CREATE TABLE IF NOT EXISTS connection (
    connection_id INTEGER PRIMARY KEY AUTOINCREMENT,
    requester_id INTEGER NOT NULL,
    addressee_id INTEGER NOT NULL,
    status TEXT NOT NULL DEFAULT 'pending',  -- pending | accepted
    created_at DATETIME,
    updated_at DATETIME,
    UNIQUE(requester_id, addressee_id),
    FOREIGN KEY (requester_id) REFERENCES user(user_id),
    FOREIGN KEY (addressee_id) REFERENCES user(user_id)
);
