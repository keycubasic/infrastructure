# Ansible

## Подготовка VM

- ### Выполнить все описанные в [README.md](../terraform/README.md) шаги

- ### Прописать IP созданной VM в [hosts.ini](../ansible/hosts.ini)

- ### Задать переменные окружения
```sh
export NEXUS_URL=https://nexus.praktikum-services.tech
export NEXUS_USERNAME=std-040-05
export NEXUS_PASSWORD=657Kt2sy
```
## Создание конфигурации

### Настройка SSH

Положить приватный ключ в /home/student/.ssh/

### Запуск плэйбука

```sh
ansible-playbook playbook.yaml
```
