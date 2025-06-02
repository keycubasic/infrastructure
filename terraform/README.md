# Terraform
## Подготовка окружения

### Инициализация в Yandex Cloud
```sh
yc init --federation-id=bpfpfctkh7focc85u9sq
```

### Конфигурация Yandex Cloud CLI
```sh
yc config set cloud-id b1g3jddf4nv5e9okle7p
yc config set folder-id b1g4n3h4dcqdt2vtjlsv
```

### Установка переменных окружения
```sh
export YC_TOKEN=$(yc iam create-token)
export YC_CLOUD_ID=$(yc config get cloud-id)
export YC_FOLDER_ID=$(yc config get folder-id)
```

## Создание инфраструктуры

### Инициализация Terreform
```sh
cd terraform
terraform init
```

### Создание SSH ключей
```sh
ssh-keygen -t rsa -C "keycube@yandex.ru" -f ./id_rsa
```
Прописать публичный ключ в cloud-init

### Проверка синтаксиса
```sh
terraform validate
```

### Форматирование кода
```sh
terraform fmt
```

### План изменений
```sh
terraform plan
```

### Создание инфраструктуры
```sh
terraform apply
```

### Подключение к VM
```sh
ssh -l ansible <nat_ip_address>
```

### Удаление инфраструктуры
```sh
terraform destroy
