CREATE TABLE "Location_Table" (
  "id" SERIAL PRIMARY KEY,
  "locationName" text NOT NULL
);

CREATE TABLE "Driver_Table" (
  "id" SERIAL PRIMARY KEY,
  "locationID" int,
  "driverName" text NOT NULL,
  "preferredDriverName" text,
  "password" password NOT NULL,
  "lastLoginTime" datetime,
  "lastLogOutTime" datetime
);

CREATE TABLE "Driver_Time_Table" (
  "id" SERIAL PRIMARY KEY,
  "driverID" int,
  "date" date NOT NULL,
  "time" time NOT NULL,
  "statusID" int
);

CREATE TABLE "Status_Table" (
  "id" SERIAL PRIMARY KEY,
  "statusName" text NOT NULL
);

ALTER TABLE "Driver_Table" ADD FOREIGN KEY ("locationID") REFERENCES "Location_Table" ("id");

ALTER TABLE "Driver_Time_Table" ADD FOREIGN KEY ("driverID") REFERENCES "Driver_Table" ("id");

ALTER TABLE "Driver_Time_Table" ADD FOREIGN KEY ("statusID") REFERENCES "Status_Table" ("id");
