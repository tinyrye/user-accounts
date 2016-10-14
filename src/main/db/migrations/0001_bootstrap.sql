
CREATE TABLE account_leaser (
    id SERIAL PRIMARY KEY,
    host VARCHAR(64),
    sub_host VARCHAR(32)
);

CREATE TABLE login_identity (
    id SERIAL PRIMARY KEY,
    full_reference VARCHAR(128) NOT NULL,
    backing_host VARCHAR(128),
    short_cut VARCHAR(16)
);

CREATE TABLE account (
	id SERIAL PRIMARY KEY,
    account_leaser_id INTEGER NOT NULL,
    account_name VARCHAR(64),
    login_identity INTEGER NOT NULL,
    password_short VARCHAR(32)
);

CREATE TABLE lease_scope (
    host VARCHAR(128),
    name VARCHAR(32) NOT NULL
);

CREATE TABLE identity_scope (
    identity_id INTEGER NOT NULL,
    name VARCHAR(32) NOT NULL
);

CREATE TABLE password_store (
	password VARCHAR(256),
	expiration_date TIMESTAMP WITH TIME ZONE
);