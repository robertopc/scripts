#!/bin/bash

read -p "Instalar o PyCharm? (y/N) " RESPOSTA

if [[ $RESPOSTA == 'y' ]]; then
  SUM="f89ee50c81145c2775ba17253e5b847d4d7b7bbdd5981032d6e397b111686eb1"
  FILENAME="pycharm-community-2022.1.4.tar.gz"
  URL="https://download-cf.jetbrains.com/python/$FILENAME"
  curl $URL -o /tmp/$FILENAME
  # enquanto o arquivo nao for baixado ou
  # estiver corrompido, repita
  while true; do
    # verifica se o arquivo existe
    if [ -f $FILENAME ]; then
      echo "$SUM  $FILENAME" > "$FILENAME.sha256"
      SUMCHECK=`sha256sum -c $FILENAME.sha256`
      echo $SUMCHECK
      # verifica a integridade do arquivo
      if [ "$SUMCHECK" == "$FILENAME: SUCESSO" ] || [ "$SUMCHECK" == "$FILENAME: OK" ]; then
        break
      fi
    fi
    echo "Baixando..."
    curl $URL -o /tmp/$FILENAME
  done
  # instalando...
  echo "Instalando..."
  tar xzf /tmp/$FILENAME
  DIR=`echo $FILENAME | sed 's/\.tar\.gz//'`
  bash /tmp/$DIR/bin/pycharm.sh &
fi

