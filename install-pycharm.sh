#!/bin/bash

read -p "Instalar o PyCharm? (y/N) " RESPOSTA

if [ $RESPOSTA == 'y' ]; then
  # https://download-cf.jetbrains.com/python/pycharm-community-2017.3.2.tar.gz
  SUM="06fbe5ffca6e27842ba71ac62eba76a976f3ee2651568e151c59482ed486e4f6"
  FILENAME="pycharm-community-2017.3.2.tar.gz"
  URL="https://download-cf.jetbrains.com/python/$FILENAME"
  # enquanto o arquivo nao for baixado ou
  # estiver corrompido, repita
  while true; do
    # verifica se o arquivo existe
    if [ -f $FILENAME ]; then
      echo "$SUM  $FILENAME" > "$FILENAME.sha256"
      SUMCHECK=`sha256sum -c $FILENAME.sha256`
      echo $SUMCHECK
      # verifica a integridade do arquivo
      if [ "$SUMCHECK" == "$FILENAME: SUCESSO" ]; then
        break
      fi
    fi
    echo "Baixando..."
    curl $URL > $FILENAME
  done
  # instalando...
  echo "Instalando..."
  tar xzf $FILENAME
  DIR=`echo $FILENAME | sed 's/\.tar\.gz//'`
  bash $DIR/bin/pycharm.sh &
fi

