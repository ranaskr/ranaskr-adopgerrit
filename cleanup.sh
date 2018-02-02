docker stop sranagerrit && docker rm sranagerrit
docker stop srana-gerrit-mysql && docker rm srana-gerrit-mysql
docker volume rm srana_git_repos srana_gerrit_review_site srana_gerrit_mysql_data
