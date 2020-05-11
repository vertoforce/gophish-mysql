FROM mysql:5.7

RUN echo "[mysqld]" >> /etc/mysql/mysql.cnf
RUN echo "sql_mode=ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION" >> /etc/mysql/mysql.cnf
