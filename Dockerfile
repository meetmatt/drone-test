FROM krosh961/apache-php7-docker

ADD . /web/html

WORKDIR /web/html

RUN rm -rf /web/html/index.html && \
    sed -i 's#^DocumentRoot ".*#DocumentRoot "/web/html/public"#g' /etc/apache2/httpd.conf && \
    sed -i 's#Directory "/var/www/localhost/htdocs.*#Directory "/web/html/public" >#g' /etc/apache2/httpd.conf && \
    mkdir /web/html/public && \
    echo "<?php phpinfo();" > /web/html/public/index.php
