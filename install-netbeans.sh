#!/bin/bash

read -p "Instalar o NetBeans? (y/N) " RESPOSTA

if [ $RESPOSTA == 'y' ]; then
  # http://download.netbeans.org/netbeans/8.2/final/bundles/netbeans-8.2-html-linux-x64.sh
  SUM="64a13be8951528d580ceb6409562cf5fed26fadb941c0bd21f7d79ac8ee65b93"
  FILENAME="netbeans-8.2-html-linux-x64.sh"
  URL="http://download.netbeans.org/netbeans/8.2/final/bundles/$FILENAME"
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
  bash $FILENAME 
fi

