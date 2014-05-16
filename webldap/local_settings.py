# Local settings

DEBUG = True
TEMPLATE_DEBUG = DEBUG

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3', # Add 'postgresql_psycopg2', 'mysql', 'sqlite3' or 'oracle'.
        'NAME': '/srv/webldap/db',             # Or path to database file if using sqlite3.
        'USER': '',             # Not used with sqlite3.
        'PASSWORD': '',         # Not used with sqlite3.
        'HOST': '',             # Set to empty string for localhost. Not used with sqlite3.
        'PORT': '',             # Set to empty string for default. Not used with sqlite3.
    }
}

# Make this unique, and don't share it with anybody.
SECRET_KEY = 'secret'

TEMPLATE_DIRS = (
    # Put strings here, like "/home/html/django_templates" or "C:/www/django/templates".
    # Always use forward slashes, even on Windows.
    # Don't forget to use absolute paths, not relative paths.
    '/srv/webldap/templates',
)

# Settings specific to 'accounts'

# SMTP relay (host and port) to use for confirmation mails
EMAIL_HOST = 'localhost'
EMAIL_PORT = 25

# Address to appear in From field
EMAIL_FROM = 'admin@federez.net'

# Number of hours a token sent by email remains valid after having been
# created. Numeric and string versions should have the same meaning.
REQ_EXPIRE_HRS = 48
REQ_EXPIRE_STR = '48 heures'

# LDAP URI (protocol and address)
LDAP_URI = 'ldap://localhost'

# Whether to use STARTTLS or not
LDAP_STARTTLS = False

# Certificate to be used with LDAPS or STARTTLS
LDAP_CACERT = ''

# LDAP base
LDAP_BASE = 'dc=federez,dc=net'

# LDAP application uid (without base)
LDAP_WEBLDAP_USER = 'uid=webldap,ou=apps'

# LDAP application password
LDAP_WEBLDAP_PASSWD = 'secret'

# Default LDAP groups and roles for created users
LDAP_DEFAULT_GROUPS = ['wiki']
LDAP_DEFAULT_ROLES = ['member']
