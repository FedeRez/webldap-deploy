#!/bin/bash

. ./dist/debian

install_ldap

# Uncomment if needed
#sudo ldapadd -Y EXTERNAL -H ldapi:/// -f ./migrations/dit/base.ldif

# Migrates the tree
ldapadd -D "cn=admin,dc=federez,dc=net" -W -H ldapi:/// -f ./migrations/dit/organizational_units.ldif

# Migrates overlays
sudo ldapmodify -Y EXTERNAL -H ldapi:/// -f ./migrations/overlays/memberof.ldif

# Requires dyngroup.ldif to be installed
# File can be found at /etc/ldap/schema/dyngroup.ldif (Debian Wheezy)
sudo ldapadd -Y EXTERNAL -H ldapi:/// -f /etc/ldap/schema/dyngroup.ldif
sudo ldapmodify -Y EXTERNAL -H ldapi:/// -f ./migrations/overlays/dynlist.ldif

# Requires ppolicy.ldif to be installed
# File can be found at /etc/ldap/schema/ppolicy.ldif (Debian Wheezy)
sudo ldapadd -Y EXTERNAL -H ldapi:/// -f /etc/ldap/schema/ppolicy.ldif
sudo ldapmodify -Y EXTERNAL -H ldapi:/// -f ./migrations/overlays/ppolicy.ldif
ldapmodify -D "cn=admin,dc=federez,dc=net" -W -H ldapi:/// -f ./migrations/overlays/ppolicy_policies.ldif

sudo ldapmodify -Y EXTERNAL -H ldapi:/// -f ./migrations/overlays/unique.ldif
sudo ldapmodify -Y EXTERNAL -H ldapi:/// -f ./migrations/overlays/refint.ldif
