
import os
from django.utils.translation import gettext_lazy as _
from cryptography.hazmat.primitives import serialization
from cryptography.hazmat.backends import default_backend
from cryptography.hazmat.primitives.asymmetric import rsa
from pathlib import Path
from datetime import timedelta
import django 
from django.utils.encoding import smart_str 
django.utils.encoding.smart_text = smart_str


# Build paths inside the project like this: BASE_DIR / 'subdir'.
BASE_DIR = Path(__file__).resolve().parent.parent


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/3.1/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = '^8ys^q)8x*w6+ms6luo7g2vct4+$m$dp#4^5-wbc-*h8m3f4li'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

ALLOWED_HOSTS = []
# ALLOWED_HOSTS = ['api.accounts.vikncodes.in.', 'www.api.accounts.vikncodes.in.','https://api.accounts.vikncodes.in.','https://www.api.accounts.vikncodes.in.']


# Application definition
# SESSION_COOKIE_DOMAIN=".vikncodes.in"

INSTALLED_APPS = [
    "corsheaders",
    'rest_framework',
    'django_user_agents',
    # 'geoip2'

    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',

    'django_inlinecss',
    'users',
    'main',
    'adminpage',
    'rest_framework.authtoken',
    

    
]

MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
    "corsheaders.middleware.CorsMiddleware",
    'django_user_agents.middleware.UserAgentMiddleware',
]


ROOT_URLCONF = 'accounts.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': ['templates'],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]

WSGI_APPLICATION = 'accounts.wsgi.application'


# Database
# https://docs.djangoproject.com/en/3.1/ref/settings/#databases

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': 'server_accounts',
        'USER': 'vikncodes',
        'PASSWORD': 'vikncodes123',
        'HOST': 'localhost',
        'PORT': '',
    }
}


# Password validation
# https://docs.djangoproject.com/en/3.1/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]


MAILQUEUE_LIMIT = 100
MAILQUEUE_QUEUE_UP = True

ACCOUNT_ACTIVATION_DAYS = 7
REGISTRATION_AUTO_LOGIN = True

EMAIL_BACKEND = "django.core.mail.backends.smtp.EmailBackend"
ACCOUNT_EMAIL_VERIFICATION = "none"
EMAIL_HOST = "smtp.gmail.com"
EMAIL_HOST_USER = "support@vikncodes.com"
EMAIL_HOST_PASSWORD = "blbgfqqjgezxahlc"
EMAIL_PORT = 587
DEFAULT_FROM_EMAIL = "support@vikncodes.com"
DEFAULT_BCC_EMAIL = "support@vikncodes.com"

DEFAULT_REPLY_TO_EMAIL = "support@vikncodes.com"
SERVER_EMAIL = "support@vikncodes.com"
EMAIL_USE_TLS = True
ADMIN_EMAIL = "support@vikncodes.com"


# Internationalization
# https://docs.djangoproject.com/en/3.1/topics/i18n/

LANGUAGE_CODE = 'en-us'

TIME_ZONE = 'UTC'

USE_I18N = True

USE_L10N = True

USE_TZ = True


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/3.1/howto/static-files/

MEDIA_URL = '/media/'
MEDIA_ROOT = os.path.join(BASE_DIR, "media")
STATIC_URL = '/static/'
STATIC_FILE_ROOT = os.path.join(BASE_DIR, "static")
STATIC_ROOT = os.path.join(BASE_DIR, 'static/css')
STATICFILES_DIRS = (
    os.path.join(BASE_DIR, "static"),
)

REST_FRAMEWORK = {
    'DEFAULT_AUTHENTICATION_CLASSES': (
        'rest_framework.authentication.TokenAuthentication',
    ),
    "DEFAULT_AUTHENTICATION_CLASSES": [
        'rest_framework_simplejwt.authentication.JWTAuthentication',
    ],
    "DEFAULT_PERMISSION_CLASSES": [
        "rest_framework.permissions.IsAuthenticated",
    ],
}

CONFIG_DIR = os.path.join(Path(BASE_DIR).parent, 'config')
JWT_PRIVATE_KEY_PATH = os.path.join(CONFIG_DIR, 'jwt_key')
JWT_PUBLIC_KEY_PATH = os.path.join(CONFIG_DIR, 'jwt_key.pub')
if (not os.path.exists(JWT_PRIVATE_KEY_PATH)) or (not os.path.exists(JWT_PUBLIC_KEY_PATH)):

    if not os.path.exists(CONFIG_DIR):
        os.makedirs(CONFIG_DIR)

    private_key = rsa.generate_private_key(
        public_exponent=65537,
        key_size=4096,
        backend=default_backend()
    )
    pem = private_key.private_bytes(
        encoding=serialization.Encoding.PEM,
        format=serialization.PrivateFormat.TraditionalOpenSSL,
        encryption_algorithm=serialization.NoEncryption()
    )
    with open(JWT_PRIVATE_KEY_PATH, 'w') as pk:
        pk.write(pem.decode())

    public_key = private_key.public_key()
    pem_public = public_key.public_bytes(
        encoding=serialization.Encoding.PEM,
        format=serialization.PublicFormat.SubjectPublicKeyInfo
    )
    with open(JWT_PUBLIC_KEY_PATH, 'w') as pk:
        pk.write(pem_public.decode())
    print('PUBLIC/PRIVATE keys Generated!')

SIMPLE_JWT = {
    "ACCESS_TOKEN_LIFETIME": timedelta(days=365),
    "REFRESH_TOKEN_LIFETIME": timedelta(days=730),
    "ROTATE_REFRESH_TOKENS": True,
    "BLACKLIST_AFTER_ROTATION": True,
    

    'ALGORITHM': 'RS256',  # 'alg' (Algorithm Used) specified in header

    'SIGNING_KEY': open(JWT_PRIVATE_KEY_PATH).read(),
    'VERIFYING_KEY': open(JWT_PUBLIC_KEY_PATH).read(),

    'AUDIENCE': None,  # "aud" (Audience) Claim
    'ISSUER': None,  # "iss" (Issuer) Claim

    'USER_ID_CLAIM': 'user_id',  # The field name to use for identifying user
    'USER_ID_FIELD': 'id',  # The field in the DB which will be filled in USER_ID_CLAIM

    'JTI_CLAIM': 'jti',  # A token’s unique identifier

    'AUTH_TOKEN_CLASSES': ('rest_framework_simplejwt.tokens.AccessToken',),
    'TOKEN_TYPE_CLAIM': 'token_type',
    'AUTH_HEADER_TYPES': ('Bearer',),
}

CORS_ALLOWED_ORIGINS = [
    "http://localhost:3000",
]
CORS_ORIGIN_ALLOW_ALL = True
CORS_ALLOW_CREDENTIALS = True
CORS_ORIGIN_WHITELIST = [
    "http://localhost:8000",
] 
# If this is used, then not need to use `CORS_ORIGIN_ALLOW_ALL = True`
CORS_ORIGIN_REGEX_WHITELIST = [
    "http://localhost:8000",
]

X_FRAME_OPTIONS = 'ALLOW-FROM http://localhost:3000'


SESSION_COOKIE_SECURE = True
SESSION_COOKIE_SAMESITE = None
CSRF_COOKIE_SAMESITE = None