# vaxcast_server

Trying again to do server-side dart. Sadly angel has been deprecated and Acqueduct hasn't been updated recently. Was trying GetX, but then retreated further to just pure dart.

It's based on this [Medium post](https://medium.com/google-cloud/build-slim-docker-images-for-dart-apps-ee98ea1d1cf7), so check it out (especially if you use mirrors, because the docker file here does not).

And for anyone playing along at home, to create the docker image, try something like
```
docker build -t vax/cast .
```
When I did the image took a whole 27mb.

Then run it with:
```
docker run -d -p 8080:8080 vax/cast
```

For some reason I couldn't get it to run on ```127.0.0.1:8080``` so instead it's running at ```0.0.0.0:8080```.