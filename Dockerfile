FROM ruby:2.5.3-alpine

# 必要なパッケージのインストール（基本的に必要になってくるものだと思うので削らないこと）
RUN apt-get update -qq && \
    apt-get install -y build-essential \ 
                       libpq-dev \        
                       nodejs \
                       vim \
                       git \ 
                       make \ 
                       gcc-c++ \ 
                       patch \ 
                       libyaml-devel \ 
                       libffi-devel \ 
                       libicu-devel \ 
                       zlib-devel \ 
                       readline-devel \ 
                       libxml2-devel \ 
                       libxslt-devel \ 
                       ImageMagick \ 
                       ImageMagick-devel \ 
                       openssl-devel \
                       libcurl \
                       libcurl-devel \ 
                       curl \
                       mysql-client \
                       mysql-dev

# 作業ディレクトリの作成、設定
RUN mkdir /app_name 
##作業ディレクトリ名をAPP_ROOTに割り当てて、以下$APP_ROOTで参照
ENV APP_ROOT /app_name 
WORKDIR $APP_ROOT

# ホスト側（ローカル）のGemfileを追加する（ローカルのGemfileは【３】で作成）
ADD ./Gemfile $APP_ROOT/Gemfile
ADD ./Gemfile.lock $APP_ROOT/Gemfile.lock

# Gemfileのbundle install
RUN bundle install
ADD . $APP_ROOT
RUN mkdir -p tmp/sockets

VOLUME $APP_ROOT/public
VOLUME $APP_ROOT/tmp