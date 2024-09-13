CREATE TABLE IF NOT EXISTS page_blocks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    event_id INT NOT NULL,
    block_type VARCHAR(50) NOT NULL,
    content TEXT,
    order_index INT NOT NULL,
    styles JSON,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (event_id) REFERENCES events(id)
);
