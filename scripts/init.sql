CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS users (
    "id" uuid DEFAULT uuid_generate_v4(),
	"email" varchar(100),
    "password" varchar(100),
    "username" TEXT,
    "create_at" timestamptz NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
    "update_at" timestamptz default NULL,
    CONSTRAINT users_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS users_api_key (
    "id" uuid DEFAULT uuid_generate_v4(),
	"apikey" text NOT NULL,
	"scopes" text NOT NULL,
	"user_id" uuid NOT NULL,
    "description" text NOT NULL,
    "expire_at" timestamptz default NULL,
	"create_at" timestamptz NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
	"update_at" timestamptz default NULL,
    CONSTRAINT api_keys_pkey PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS users_level (
    "id" bigint NOT NULL,
	"apikey" text NOT NULL,
	"scopes" text NOT NULL,
	"user_id" uuid NOT NULL,
    "description" text NOT NULL,
    "expire_at" timestamptz default NULL,
	"create_at" timestamptz NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
	"update_at" timestamptz default NULL,
    CONSTRAINT api_keys_pkey PRIMARY KEY (id)
);
