FROM 3dpro/nginx
RUN echo 'Acquire::http::Proxy "http://172.17.0.1:3142";' > /etc/apt/apt.conf.d/11proxy && \
    wget -qO- https://deb.nodesource.com/setup_7.x | bash - && \
    sudo apt-key adv --fetch-keys http://dl.yarnpkg.com/debian/pubkey.gpg && \
    echo "deb http://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && \
    apt-get install -y nodejs yarn git && \
    yarn global add bower grunt && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /build-files /etc/apt/apt.conf.d/11proxy
