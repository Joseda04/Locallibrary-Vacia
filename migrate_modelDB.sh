echo "Instalando requerimientos..."
pip install -r requirements.txt

# Automatic migrations
echo "Iniciando migraciones..."
python3 manage.py makemigrations && python3 manage.py migrate

# Colecta de staticsFiles en theme/static/
echo "Colectando StaticFiles..."
python3 manage.py collectstatic --noinput

# DJANGO_SUPERUSER_NAME="joseda"
# DJANGO_SUPERUSER_EMAIL="joseda@garrisclub.es"
# DJANGO_SUPERUSER_PASSWORD="josedavid.2024"

# python manage.py createsuperuser --noinput \
#   --username="$DJANGO_SUPERUSER_NAME" \
#   --email="$DJANGO_SUPERUSER_EMAIL" \
#   --password="$DJANGO_SUPERUSER_PASSWORD"