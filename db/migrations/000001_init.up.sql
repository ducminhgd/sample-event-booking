create table if not exists "event" (
    "id" uuid primary key,
    "name" text not null,
    "no_tickets" int8 not null default 0,
    "status" int2 not null default 0,
    "created_at" timestamptz not null default now(),
    "created_by" text not null,
    "updated_at" timestamptz,
    "updated_by" text not null
);

create table if not exists "event_txn" (
    "id" uuid primary key,
    "event_id" uuid not null,
    "pg_txn_id" text, -- id from pg
    "no_tickets" int8 not null default 0,
    "status" int2 not null default 0,
    "created_at" timestamptz not null default now(),
    "created_by" text not null,
    "updated_at" timestamptz,
    "updated_by" text not null
);