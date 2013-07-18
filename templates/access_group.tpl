# FedeRez access group template

# An access group gathers the users allowed to access a resource.
# Owners can manage the group with administrators
# Members can access the corresponding resource (they can also access a resource provided they belong to the right role)

dn: cn={accessgroup},ou=access,ou=groups,dc=federez,dc=net
objectClass: groupOfUniqueNames
objectClass: OpenLDAPdisplayableObject
cn: {accessgroup}
uniqueMember: {members DNs}
displayName: {accessgroup human-readable name}
owner: {owners DNs}