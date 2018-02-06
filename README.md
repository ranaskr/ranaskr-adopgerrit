# How to use this image
Current Version: 0.1.5 - Gerrit 2.14.5.1 with LDAP Integration
The easiest way to run adop-gerrit image is as follow:
```
docker run --name <your-container-name> -d -p 8080:8080 -p 29418:29418 ranaskr/adop-gerrit:VERSION
```
after the above gerrit will be available at: http://localhost:8080

## Run docker-gerrit with MySQL and OpenLDAP
The following assumes that MySQL and OpenLDAP are running.

The following command will run adop-gerrit and connect it to MySQL and OpenLDAP
```
  docker run \
  --name adop-gerrit \
  -p 8080:8080 \
  -p 29418:29418 \
  -e DATABASE_TYPE=mysql \
  -e DB_HOSTNAME=<mysql-servername>
  -e DB\_PORT="3306"
  -e DB\_NAME=<mysql-dbame>
  -e DB\_USER=<mysql-dbuser>
  -e DB\_PASSWORD=<mysql-dbpassword>
  -e AUTH\_TYPE=LDAP \
  -e LDAP\_SERVER=<ldap-servername:389> \
  -e LDAP\_ACCOUNTBASE=<ldap-basedn> \
  -d accenture/adop-gerrit:VERSION
```

In addition all the LDAP attibutes defined in [Gerrit LDAP](https://gerrit-review.googlesource.com/Documentation/config-gerrit.html#ldap) are supported.

