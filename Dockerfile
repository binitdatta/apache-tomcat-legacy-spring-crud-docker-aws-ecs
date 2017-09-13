FROM tomcat:8.0.20-jre8
COPY target/spring-aws-ecs-demo.war /usr/local/tomcat/webapps/