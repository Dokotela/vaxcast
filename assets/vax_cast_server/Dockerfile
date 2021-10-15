FROM google/dart
# uncomment next line to ensure latest Dart and root CA bundle
# RUN apt -y update && apt -y upgrade
WORKDIR /vaxcast_server
COPY pubspec.yaml .
RUN dart pub get
COPY . .
RUN pub get --offline
RUN dart2native /vaxcast_server/bin/server.dart -o /vaxcast_server/bin/server

FROM subfuzion/dart:slim
COPY --from=0 /vaxcast_server/bin/server /vaxcast_server/bin/server
# COPY any other directories or files you may require at runtime, ex:
#COPY --from=0 /app/static/ /app/static/
EXPOSE 8080
ENTRYPOINT ["/vaxcast_server/bin/server"]