ARG ES_VER
FROM elasticsearch:${ES_VER}
# install pinyin and 中文分词 plugins
# https://github.com/infinilabs/analysis-pinyin/
# https://github.com/infinilabs/analysis-ik
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install --batch \
https://get.infini.cloud/elasticsearch/analysis-pinyin/9.2.4 https://get.infini.cloud/elasticsearch/analysis-ik/9.2.4
# copy dictionaries
COPY /hunspell /usr/share/elasticsearch/config/hunspell
