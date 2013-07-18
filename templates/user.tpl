# FedeRez user template

# Constraints on format to be defined for:
# - cn
# - uid
# - names (sn, givenName)
# - email

dn: uid={firstname}.{lastname},ou=users,dc=federez,dc=net
objectClass: inetOrgPerson
objectClass: person
objectClass: posixAccount
objectClass: shadowAccount
uid: {firstname}.{lastname}
cn: {nickname}
sn: {lastname.uppercase}
givenName: {firstname.capilalized}
displayName: {firstname.capitalized} {lastname.uppercase}
gidNumber: {gid, computed}
uidNumber: {uid, computed}
homeDirectory: /home/{nickname}
loginShell: /bin/bash
jpegPhoto: {photo, base64 encoded byteArray}
mail: {email}
description: {description}
shadowMax: 99999
shadowMin: 0
shadowWarning: 7
userPassword: {SSHA ciphered password}
