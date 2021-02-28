FROM maven as maven
RUN mkdir /usr/src/mymaven
WORKDIR /usr/src/mymaven
COPY . .
RUN mvn install -DskipTests

FROM tomcat 
WORKDIR webapps 
COPY --from=maven /usr/src/mymaven/target/account-service.war .
RUN rm -rf ROOT && mv account-service.war ROOT.war
