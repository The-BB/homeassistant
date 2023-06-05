# homeassistant
Home Assistant (python3; core)

0. Читаем и выполняем [Compile packages from sources](https://github.com/Entware/Entware/wiki/Compile-packages-from-sources). 

1. Добавляем фид в конфиг:
```
echo 'src-git homeassistant https://github.com/The-BB/homeassistant.git' >> feeds.conf
```
2. Обновляем фид:
```
./scripts/feeds update homeassistant
```
3. Подготавливаем к работе (создаём копии и патчим):
```
sh ./feeds/homeassistant/backup-recover.sh backup
```
4. Добавляем пакеты из фида:
```
./scripts/feeds install -a -p homeassistant
```
5. Собираем пакеты...

6. Перед обновлением фидов восстанавливаем:
```
sh ./feeds/homeassistant/backup-recover.sh recovery
```
