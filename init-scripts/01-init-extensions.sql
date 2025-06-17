-- PostgreSQL 확장 설치 스크립트
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE EXTENSION IF NOT EXISTS "pg_stat_statements";

-- 기본 스키마 생성
CREATE SCHEMA IF NOT EXISTS adcore;

-- 시간대 설정
SET timezone = 'Asia/Seoul';