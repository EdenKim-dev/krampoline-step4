# MariaDB의 최신 버전을 기반으로 합니다.
FROM mariadb:latest

RUN apt-get update && apt-get install -y mysql-client

# schema.sql 및 data.sql 파일을 이미지에 추가합니다.

ADD schema.sql /docker-entrypoint-initdb.d
ADD data.sql /docker-entrypoint-initdb.d

RUN chmod 755 /docker-entrypoint-initdb.d/schema.sql && chmod 755 /docker-entrypoint-initdb.d/data.sql