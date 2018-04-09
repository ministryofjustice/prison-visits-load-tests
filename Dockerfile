FROM maven

ENV APP_HOME /usr/src/prison-visits-load-tests/
ENV MAVEN_HOME /usr/share/maven
ENV MAVEN_CONFIG "$USER_HOME_DIR/.m2"

RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

ADD . $APP_HOME

VOLUME "$USER_HOME_DIR/.m2"

CMD ["mvn", "verify", "clean", "--fail-never"]