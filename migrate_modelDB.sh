echo "Instalando requerimientos..."
pip install -r requirements.txt

# Automatic migrations
echo "Iniciando migraciones..."
python3 manage.py makemigrations && python3 manage.py migrate

# Colecta de staticsFiles en theme/static/
echo "Colectando StaticFiles..."
python3 manage.py collectstatic --noinput

python "$DJANGO_MANAGE_PATH" createsuperuser --noinput \
  --username= config("$DJANGO_SUPERUSER_NAME") \
  --email= config("$DJANGO_SUPERUSER_EMAIL") \
  --password= config("$DJANGO_SUPERUSER_PASSWORD")