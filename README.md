# stable-diffusion-webui-docker

Данный образ и compose файл позволяют запустить stable-diffusion-webui в контейнере с доступом к NVIDIA GPU

# сборка

```
docker-compose --compatibility build
docker-compose up
```

# настройка

в docker-compose.yaml нужно указать путь к папкам хранения репозиториев webui, моделям и папке вывода сгенерированных изображений  
Для запуска docker в windows пути нужно указывать в формате /d/stable-diffusion/repositories, где /d/ - буква диска

___

# stable-diffusion-webui-docker

This image and compose file allow you to run stable-diffusion-webui in a docker container with access to NVIDIA GPU

# installation

```
docker-compose --compatibility build
docker-compose up
```

# setting

in docker-compose.yaml you need to specify the path to the webui repository storage folders, models and generated image output folder (like #place here path to repositories#)
To run docker in Windows, paths must be specified in the format /d/stable-diffusion/repositories, where /d/ is the drive letter
