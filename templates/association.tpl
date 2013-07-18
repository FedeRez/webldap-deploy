# FedeRez association template

# FedeRez associations
# Owners can manage the association with administrators 

dn: o={association},ou=associations,dc=federez,dc=net
objectClass: groupOfUniqueNames
objectClass: OpenLDAPdisplayableObject
cn: {association}
displayName: {human-readable association name}
uniqueMember: {members DNs}
o: {association}
owner: {owner DNs}