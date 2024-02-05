from decouple import config, Csv
ALLOWED_HOSTS = ['.vercel.app','.garrisclub.es','127.0.0.1']
DEBUG = False
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': config("POSTGRES_DATABASE"),
        'USER': config("POSTGRES_USER"),
        'PASSWORD': config("POSTGRES_PASSWORD"),
        'HOST': config("POSTGRES_HOST"),
        'PORT': 5432
    }
}