-- Log keeping file of the SQL queries used to solve the mystery.

-- Search crime scene reports
SELECT * FROM crime_Scene_reports WHERE year = 2025 AND month = 7 AND day = 28 AND street = "Humphrey Street";

-- Theft took place at 10:15am at the bakery, interviews where conducted

-- Search interviews
SELECT * FROM interviews WHERE year = 2025 AND month = 7 AND day = 28;

-- Sometime within ten minutes of the theft, the thief got into a car in the bakery parking lot and drived away.
-- Earlier that morning, the thief was seen withdrawing money by the ATM on Leggett Street.
-- As the thief was leaving the bakery, they called someone who talked to them for less than a minute.
-- The thief took the earliest flight out of Fiftyville the next day.

-- Search bakery security logs within the hour of the theft
SELECT * FROM bakery_security_logs WHERE year = 2025 AND month = 7 AND day = 28 AND hour = 10 AND activity = "exit";

-- Suspected license plates:
-- 5P2BI95
-- 94KL13X
-- 6P58WS2
-- 4328GD8
-- G412CB7
-- L93JTIZ
-- 322W7JE
-- 0NTHK55
-- 1106N58

-- Search logs for suspected transactions
SELECT * FROM atm_transactions WHERE year = 2025 AND month = 7 AND day = 28 AND atm_location = "Leggett Street" AND transaction_type = "withdraw";

-- Suspected account numbers:
-- 28500762
-- 28296815
-- 76054385
-- 49610011
-- 16153065
-- 25506511
-- 81061156
-- 26013199

-- Search suspected phone calls
SELECT * FROM phone_calls WHERE year = 2025 AND month = 7 AND day = 28 AND duration <= 60;

-- Suspected phone callers and receivers:
--  caller        |    receiver
-- (130) 555-0289 | (996) 555-8899
-- (499) 555-9472 | (892) 555-8872
-- (367) 555-5533 | (375) 555-8161
-- (609) 555-5876 | (389) 555-5198
-- (499) 555-9472 | (717) 555-1342
-- (286) 555-6063 | (676) 555-6554
-- (770) 555-1861 | (725) 555-3243
-- (031) 555-6622 | (910) 555-3251
-- (826) 555-1652 | (066) 555-9701
-- (338) 555-6650 | (704) 555-2131

-- Find earliest flight
SELECT * FROM flights WHERE year = 2025 AND month = 7 AND day = 29;

-- flight id: 36
-- origin airport id: 8
-- destination airport id: 4

SELECT * FROM airports WHERE id = 8;
SELECT * FROM airports WHERE id = 4;

-- origin city: Fiftyville
-- destination city: New York City

-- Find info about the flight passengers
SELECT * FROM passengers WHERE Flight_id = 36;

-- Suspected passport numbers:
-- 7214083635
-- 1695452385
-- 5773159633
-- 1540955065
-- 8294398571
-- 1988161715
-- 9878712108
-- 8496433585

-- Find if a person has a suspected phone number and license plate with queries like:
SELECT * FROM people WHERE passport_number = 7214083635;

-- Updated suspected passport numbers:
-- 1695452385
-- 5773159633
-- 8294398571
-- 1988161715

-- Get suspected person ids from their passport number with queries like:
SELECT * FROM people WHERE passport_number = 1695452385;

-- Suspected person ids:
-- 398010
-- 686048
-- 560886
-- 449774

-- Check if person ids has a suspected bank account number with queries like:
SELECT * FROM bank_accounts WHERE person_id = 398010;

-- Updated suspected person ids:
-- 686048
-- 449774

-- Get remaining suspects full info:
SELECT * FROM people WHERE id = 686048;
SELECT * FROM people WHERE id = 449774;

SELECT * FROM bank_accounts WHERE person_id = 686048;
SELECT * FROM bank_accounts WHERE person_id = 449774;

-- id     | name   |  phone_number  | passport_number | license_plate | account_number
-- 686048 | Bruce  | (367) 555-5533 | 5773159633      | 94KL13X       | 49610011
-- 449774 | Taylor | (286) 555-6063 | 1988161715      | 1106N58       | 76054385

-- Review bakery security logs
 SELECT * FROM bakery_security_logs WHERE year = 2025 AND month = 7 AND day = 28 AND hour = 10 AND activity = "exit";

-- Theft took place at 10:15am and sometime within a 10 minute range, the thieve left the bakery
-- Bruce left the bakery at 10:18am
-- Taylor left the bakery at 10:35am

-- Bruce is the thief

-- Find accomplice:
SELECT * FROM phone_calls WHERE year = 2025 AND month = 7 AND day = 28 AND duration <= 60;

-- Accomplice phone: (375) 555-8161

SELECT * FROM people WHERE phone_number = "(375) 555-8161";

-- The accomplice is Robin
