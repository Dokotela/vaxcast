# cloud_fhirfli

Thanks so much for this docker image! I've been using it successfully to run a server, and now I wanted to use it to host a Flutter Web App. My folder structure looks like this:
```
-njck/
  -web/
  -Dockerfile
  -pubspec.yaml
  -server.dart
```
The web folder is just the simple Flutter demo app with floating button and counter. My server.dart looks like this:
```
import 'package:get_server/get_server.dart';
void main() => runApp(GetServer(home: FolderWidget('web')));
```
And my docker file looks like this:
```
################
FROM google/dart:2.10

RUN apt -y update && apt -y upgrade

WORKDIR /app
COPY pubspec.yaml /app/pubspec.yaml
RUN dart pub get
COPY . .
RUN dart pub get --offline
RUN dart compile exe /app/server.dart -o /app/server

########################
FROM subfuzion/dart:slim
COPY --from=0 /app /app
EXPOSE 8080
ENTRYPOINT ["/app/server"]
```
I can run the server directly, or I can build a docker container and run it. However, in docker, I can only access the web app one time. I can access ```0.0.0.0:8080``` once, and ```localhost:8080``` once. But then after that, if I try to go to either of those addresses, it says the page isn't available.