#$(sleep 8; docker cp ./tom)

docker run -it \
 --rm -p 8080:8080 \
 --name tommy \
 -v "$PWD"/tommy.config/tomcat-users.xml:/usr/local/tomcat/conf/tomcat-users.xml:z \
 -v "$PWD"/tommy.config/context.xml:/usr/local/tomcat/webapps/manager/META-INF/context.xml:z \
 tomcat:9-jre8-alpine
