#!/usr/bin/env bash

# Завершить работу уже запущенных панелей
killall -q polybar

# Ожидание завершения процессов
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Запуск панели (название 'main' должно совпадать с названием в config.ini)
polybar main &
