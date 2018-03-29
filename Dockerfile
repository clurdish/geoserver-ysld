FROM kartoza/geoserver:2.12.1

ENV FILE=geoserver-2.12-SNAPSHOT-ysld-plugin

RUN cd /tmp && \
    wget -q http://ares.opengeo.org/geoserver/2.12.x/ext-latest/${FILE}.zip && \
    unzip -q ${FILE}.zip -d /usr/local/tomcat/webapps/geoserver/WEB-INF/lib
    