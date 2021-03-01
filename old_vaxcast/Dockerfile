FROM google/dart
USER 0:0
WORKDIR /vax_cast
ADD fhir/pubspec.yaml /vax_cast/fhir/
ADD pubspec.* /vax_cast/
RUN pub get --no-precompile
ADD . /vax_cast/
RUN pub get --offline --no-precompile
ENV ANGEL_ENV=production
EXPOSE 3000
CMD ["dart", "--observe", "main.dart"]