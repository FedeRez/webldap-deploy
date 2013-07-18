# FedeRez technical user template.

# A technical user is used by external applications to read/write the database.

dn: cn={service-user},ou=access,ou=groups,dc=federez,dc=net
objectClass: applicationProcess
objectClass: simpleSecurityObject
cn: {service-user}
description: {description}
userPassword: {SSHA ciphered password}