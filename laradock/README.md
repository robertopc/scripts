# Servidor local com Laradock

Primeiro precisamos clonar o repositório do laradock como submódulo.
```bash
git submodule add https://github.com/laradock/laradock
```

Acesse o diretório laradock e copie o `.env`.
```bash
cd laradock
cp .env.example .env
```

Edite o arquivo `.env` inserindo o seguintes valores:
```ini
COMPOSE_PROJECT_NAME=sttelessaudeuerjapi
PHP_VERSION=8.1
``` 

Pra subir o servidor utilize o comando:
```
docker-compose up -d nginx mysql adminer
```

Volte a raiz do projeto e edite o `.env` com os seguintes dados no MYSQL.
```ini
DB_CONNECTION=mysql
DB_HOST=mysql
DB_PORT=3306
DB_DATABASE=default
DB_USERNAME=root
DB_PASSWORD=root
```
Para visualizar o banco criado acesse http://localhost:8081 .

## Acessando o container do projeto

Acesse o container através do seguinte comando e execute o composer.
```bash
docker exec --user=laradock -it sttelessaudeuerjapi_workspace_1 bash
composer install
```

Gere a key do projeto.
```bash
php artisan key:generate
```

Execute as migrations.

```bash
php artisan migrate
```

## Acessando o servidor
Para acessar o servidor, acesse o http://localhost .


