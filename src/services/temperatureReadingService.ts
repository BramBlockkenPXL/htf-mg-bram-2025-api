import {PrismaClient} from '../generated/prisma';

const prisma = new PrismaClient();

export const getAllTemperatureReadings = async () => {
    return prisma.temperatureSensor.findMany({
        select: {
            readings: {
                select: {
                    id: true,
                    temperature: true,
                    timestamp: true
                }
            }
        }
    })
}

