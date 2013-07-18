# FedeRez role template

# A role gathers the users sharing the same profile. Example: a FedeRez member.
# It can be used to give default rights to people with the same characteristics.
# Owners can manage the role with administrators
# Members have the rights corresponding to the role (these rights can be adjusted with groups if needed)

dn: cn={role},ou=roles,dc=federez,dc=net
objectClass: groupOfUniqueNames
objectClass: OpenLDAPdisplayableObject
cn: {role}
uniqueMember: {members DNs}
displayName: {role human-readable name}
owner: {owners DNs}