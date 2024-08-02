ARG PHP_VERSION="wpjscc/reactphp:8.2-cli-alpine3.18"
FROM ${PHP_VERSION}

# ARG GIT_USERNAME
# ARG GIT_PASSWORD

# RUN composer config --global http-basic.gitee.com $GIT_USERNAME $GIT_PASSWORD

# RUN apk add git
RUN apk add --no-cache python3 py3-pip


RUN pip install --no-cache-dir -i https://pypi.tuna.tsinghua.edu.cn/simple edge-tts


COPY  . /var/www

WORKDIR /var/www

RUN composer install --ignore-platform-reqs --no-dev --no-interaction -o -vvv

# RUN rm -rf /root/.composer/auth.json


