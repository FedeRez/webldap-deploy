#!/bin/bash

# If needed
ldapmodify -Y EXTERNAL -H ldapi:/// -f ./migrations/dit/base.ldif

# Migrates the tree
ldapadd -D "cn=admin,dc=federez,dc=net" -W -H ldapi:/// -f ./migrations/dit/organizational_units.ldif

# Migrates overlays
ldapmodify -Y EXTERNAL -H ldapi:/// -f ./migrations/overlays/memberof.ldif

# Requires dyngroup.ldif to be installed
# File can be found at /etc/ldap/schema/dyngroup.ldif (Debian Wheezy)
ldapadd -Y EXTERNAL -H ldapi:/// -f /etc/ldap/schema/dyngroup.ldif
ldapmodify -Y EXTERNAL -H ldapi:/// -f ./migrations/overlays/dynlist.ldif

# Requires ppolicy.ldif to be installed
# File can be found at /etc/ldap/schema/ppolicy.ldif (Debian Wheezy)
ldapadd -Y EXTERNAL -H ldapi:/// -f /etc/ldap/schema/ppolicy.ldif
ldapmodify -Y EXTERNAL -H ldapi:/// -f ./migrations/overlays/ppolicy.ldif
ldapmodify -D "cn=admin,dc=federez,dc=net" -W -H ldapi:/// -f ./migrations/overlays/ppolicy_policies.ldif

ldapmodify -Y EXTERNAL -H ldapi:/// -f ./migrations/overlays/unique.ldif
ldapmodify -Y EXTERNAL -H ldapi:/// -f ./migrations/overlays/refint.ldif