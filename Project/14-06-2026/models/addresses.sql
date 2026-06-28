CREATE TABLE addresses (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,

    user_id BIGINT NOT NULL UNIQUE,

    -- flat_number VARCHAR(50),

    -- building_name VARCHAR(150),

    -- street VARCHAR(150),

    city VARCHAR(100),

    state VARCHAR(100),

    country VARCHAR(100),

    pincode VARCHAR(20),

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,

    CONSTRAINT fk_address_user
        FOREIGN KEY (user_id)
        REFERENCES users(id)
        ON DELETE CASCADE
);