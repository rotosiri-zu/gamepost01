FROM ruby:2.5.1

# リポジトリを更新し依存モジュールをインストール
RUN apt-get update -qq && \
    apt-get install -y build-essential \
                       nodejs

# ルート直下にwebappという名前で作業ディレクトリを作成（コンテナ内のアプリケーションディレクトリ）
RUN mkdir /sagittarius.conf
WORKDIR /sagittarius.conf

# ホストのGemfileとGemfile.lockをコンテナにコピー
ADD Gemfile /sagittarius.conf/Gemfile
ADD Gemfile.lock /sagittarius.conf/Gemfile.lock

# bundle installの実行
RUN bundle install

# ホストのアプリケーションディレクトリ内をすべてコンテナにコピー
ADD . /sagittarius.conf

# puma.sockを配置するディレクトリを作成
RUN mkdir -p tmp/sockets

VOLUME $APP_ROOT/public
VOLUME $APP_ROOT/tmp
