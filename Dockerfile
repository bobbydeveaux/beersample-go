FROM golang:1.8
MAINTAINER me@bobbyjason.co.uk
RUN 	   mkdir /deployment
COPY       beersample /deployment/beersample
COPY       static /deployment/static
COPY       tmpls /deployment/tmpls
RUN        chmod -R 755 /deployment/static
RUN        chmod -R 755 /deployment/tmpls
ENTRYPOINT ["/deployment/beersample"]
# Document that the service listens on port 8080.
EXPOSE 8080
