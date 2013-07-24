# FedeRez technical user template

# A technical user is used by external applications to read or write to the
# database.

dn: cn={id},ou=service-user,ou=groups,dc=federez,dc=net
objectClass: applicationProcess
objectClass: simpleSecurityObject
cn: {id}
description: {description}
userPassword: {SSHA hashed password}
