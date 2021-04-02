#!/bin/sh

# 本番環境か？の分岐をしたいためにstart.sh を作った
if [ "${RAILS_ENV}" = "production" ]
then
    bundle exec rails assets:precompile
fi

# サーバー起動 指定がない場合は3000ポートを使う。 ip 0.0.0.0 どこからでもOK
bundle exec rails s -p ${PORT:-3000} -b 0.0.0.0
