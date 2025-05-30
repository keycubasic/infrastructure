# Ansible

## Подготовка VM

- ### Выполнить все описанные в [README.md](../terraform/README.md) шаги

- ### Прописать IP созданной VM в [hosts.ini](../ansible/hosts.ini)

## Создание конфигурации

### Настройка SSH

Положить приватный ключ в /home/student/.ssh/

### Запуск плэйбука

```sh
ansible-playbook playbook.yaml
```
