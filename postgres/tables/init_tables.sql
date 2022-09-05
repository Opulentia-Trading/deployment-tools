DROP TABLE IF EXISTS positions;
CREATE TABLE IF NOT EXISTS positions (
    fluuid VARCHAR(50) PRIMARY KEY,
    exchange VARCHAR(50) NOT NULL,
    base VARCHAR(50) NOT NULL,
    quote VARCHAR(50) NOT NULL,
    status VARCHAR(50) NOT NULL,
    amount float NOT NULL,
    funding_rate float NOT NULL,
    futures_long boolean NOT NULL,
    upper_liquidation float DEFAULT -1.0 NOT NULL,
    lower_liquidation float DEFAULT -1.0 NOT NULL,
    orders JSON DEFAULT '{}',
    created_at TIMESTAMP DEFAULT current_timestamp NOT NULL
);

DROP TABLE IF EXISTS orders;
CREATE TABLE IF NOT EXISTS orders (
    ouuid VARCHAR(50) PRIMARY KEY,
    fluuid VARCHAR(50) NOT NULL,
    exchange VARCHAR(50) NOT NULL,
    base VARCHAR(50) NOT NULL,
    quote VARCHAR(50) NOT NULL,
    status VARCHAR(50) NOT NULL,
    long boolean NOT NULL,
    instrument VARCHAR(50) NOT NULL,
    price float NOT NULL,
    collateral_amount float NOT NULL,
    position_amount float NOT NULL,
    liquidation_price float NOT NULL,
    fees float NOT NULL,
    leverage_type VARCHAR(50) NOT NULL,
    created_at TIMESTAMP default current_timestamp NOT NULL
);
