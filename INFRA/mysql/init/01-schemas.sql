-- 서버마다 스키마와 계정을 분리한다. 서로의 DB는 조회할 수 없다. (9장)
-- 비밀번호는 로컬 개발 전용 값이다.

CREATE DATABASE IF NOT EXISTS merchant_db CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
CREATE DATABASE IF NOT EXISTS pg_db       CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
CREATE DATABASE IF NOT EXISTS card_db     CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

CREATE USER IF NOT EXISTS 'merchant'@'%' IDENTIFIED BY 'merchant';
CREATE USER IF NOT EXISTS 'pg'@'%'       IDENTIFIED BY 'pg';
CREATE USER IF NOT EXISTS 'card'@'%'     IDENTIFIED BY 'card';

GRANT ALL PRIVILEGES ON merchant_db.* TO 'merchant'@'%';
GRANT ALL PRIVILEGES ON pg_db.*       TO 'pg'@'%';
GRANT ALL PRIVILEGES ON card_db.*     TO 'card'@'%';
