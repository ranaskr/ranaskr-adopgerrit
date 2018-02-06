docker stop gerrit && docker rm gerrit
docker stop gerrit-mysql && docker rm gerrit-mysql
docker volume rm git_repos gerrit_review_site gerrit_mysql_data
