PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE "migrations" ("migration" varchar not null, "batch" integer not null);
INSERT INTO "migrations" VALUES('2013_05_07_211323_create_posts_table',1);
INSERT INTO "migrations" VALUES('2013_05_07_211532_create_users_table',1);
INSERT INTO "migrations" VALUES('2014_04_19_111119_remember_token_for_users_table',1);
CREATE TABLE "posts" ("id" integer not null primary key autoincrement, "title" varchar not null, "body" text not null, "created_at" datetime not null, "updated_at" datetime not null);
CREATE TABLE "users" ("id" integer not null primary key autoincrement, "email" varchar not null, "password" varchar not null, "created_at" datetime not null, "updated_at" datetime not null, "remember_token" varchar null);
CREATE UNIQUE INDEX users_email_unique on "users" ("email");
COMMIT;
