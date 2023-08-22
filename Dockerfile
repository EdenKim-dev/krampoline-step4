# MariaDB의 최신 버전을 기반으로 합니다.
FROM mariadb:latest

RUN apt-get update && apt-get install -y mysql-client

# schema.sql 및 data.sql 파일을 이미지에 추가합니다.

RUN chmod 755 schema.sql && chmod 755 data.sql

ADD schema.sql /docker-entrypoint-initdb.d
ADD data.sql /docker-entrypoint-initdb.d