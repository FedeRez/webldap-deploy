# FedeRez role template

# A role gathers the users sharing the same profile. Example: a FedeRez member.
# It can be used to give default rights to people with the same
# characteristics. Members have the rights corresponding to the role (these
# rights can be adjusted with groups if needed).

dn: cn={id},ou=roles,dc=federez,dc=net
objectClass: organizationalRole
cn: {id}
roleOccupant: {occupant}
displayName: {name}
