# Ritolog


上から順番に実行していくとDockerコンテナ内に作られたDjangoが起動します。


docker container init

```
$ ./bin/container_init.sh
```

django admin user

```
$ ./bin/django_create_superuser.sh
```

docker container start

```
$ ./bin/container_start.sh

http://localhost:1337

```
