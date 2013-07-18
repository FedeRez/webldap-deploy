# FedeRez technical user groups template

# A technical user groups is used to give the same rights to technical users performing the same operations.
#
# It relies on dynlist and the name of the service
# For instance, name a service-user with a trailing ".auth" if its purpose is to authenticate users.
# Every service named "*.auth" will be gathered in the dynamic group, which could have the right to read userPassword attributes.

dn: cn={servicegroup},ou=services,ou=groups,dc=federez,dc=net
objectClass: groupOfURLs
cn: {servicegroup}
# member: filled automagically by dynlist
memberURL: {search url}