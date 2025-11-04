-- CreateTable
CREATE TABLE "TemperatureSensor" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "latitude" REAL NOT NULL,
    "longitude" REAL NOT NULL
);

-- CreateTable
CREATE TABLE "TemperatureReading" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "temperature" DECIMAL NOT NULL,
    "temperatureSensorId" TEXT NOT NULL,
    CONSTRAINT "TemperatureReading_temperatureSensorId_fkey" FOREIGN KEY ("temperatureSensorId") REFERENCES "TemperatureSensor" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
