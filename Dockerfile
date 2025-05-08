FROM umputun/remark42:latest

# Создаём директорию для данных
RUN mkdir -p /srv/var

# Задаём параметры для Remark42
ENV REMARK_SECRET="8WokWgy5oCg/SJLDmGruFyL3YWaZkorPITM8dGkMCB8="    # Генерируешь уникальный секретный ключ
ENV REMARK_URL="https://remark42-tigran.onrender.com"  # Указываем URL, который будет использоваться для Remark42

# Устанавливаем начальную команду
CMD ["./bin/remark42", "--secret", "$REMARK_SECRET", "--url", "$REMARK_URL"]