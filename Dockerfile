FROM lucee/lucee:5.3-nginx

# NGINX configs
# COPY config/nginx/ /etc/nginx/
# Lucee configs
# COPY config/lucee/ /opt/lucee/web/

# install extensions by prewarming lucee
ENV LUCEE_EXTENSIONS "66e312dd-d083-27c0-64189d16753fd6f0;name=PDF;version=1.0.0.68,99a4ef8d-f2fd-40c8-8fb8c2e67a4eeeb6;name=MSSQL;version=8.4.1.jre8"
RUN /usr/local/tomcat/bin/prewarm.sh


RUN sh -c 'echo "Password1" > /opt/lucee/server/lucee-server/context/password.txt' 