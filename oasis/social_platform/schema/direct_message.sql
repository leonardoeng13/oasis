-- Schema for WhatsApp-style direct messages between two users.
-- NOTE: This table is not yet automatically created by the platform.
-- It is intended for future integration of 1-to-1 private messaging
-- (ActionType.SEND_DIRECT_MESSAGE).
CREATE TABLE IF NOT EXISTS direct_message (
    message_id INTEGER PRIMARY KEY AUTOINCREMENT,
    sender_id INTEGER NOT NULL,
    receiver_id INTEGER NOT NULL,
    content TEXT NOT NULL,
    sent_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    is_read INTEGER DEFAULT 0,
    FOREIGN KEY (sender_id) REFERENCES user(user_id),
    FOREIGN KEY (receiver_id) REFERENCES user(user_id)
);
