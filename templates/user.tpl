# FedeRez user template

# Constraints on format to be defined for:
# - cn
# - uid
# - names (sn, givenName)
# - email

dn: uid={firstname.uid}.{lastname.uid},ou=users,dc=federez,dc=net
objectClass: inetOrgPerson
objectClass: person
objectClass: posixAccount
objectClass: shadowAccount
objectClass: netFederezUser
uid: {firstname.uid}.{lastname.uid}
cn: {nickname}
netFederezUID: {username}
sn: {lastname}
givenName: {firstname}
displayName: {firstname} {lastname}
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
userPassword: {SSHA hashed password}
