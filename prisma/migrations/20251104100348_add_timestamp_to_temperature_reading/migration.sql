-- RedefineTables
PRAGMA defer_foreign_keys=ON;
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_TemperatureReading" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "temperature" DECIMAL NOT NULL,
    "timestamp" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "temperatureSensorId" TEXT NOT NULL,
    CONSTRAINT "TemperatureReading_temperatureSensorId_fkey" FOREIGN KEY ("temperatureSensorId") REFERENCES "TemperatureSensor" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_TemperatureReading" ("id", "temperature", "temperatureSensorId") SELECT "id", "temperature", "temperatureSensorId" FROM "TemperatureReading";
DROP TABLE "TemperatureReading";
ALTER TABLE "new_TemperatureReading" RENAME TO "TemperatureReading";
PRAGMA foreign_keys=ON;
PRAGMA defer_foreign_keys=OFF;
