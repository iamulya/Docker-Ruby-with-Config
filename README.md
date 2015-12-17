# Docker-Ruby-with-Config
Docker setup for ruby with external files for configuration and certificates

Ruby version : 2.2.3  
Sass version : 3.4.20  
Compass version : 1.0.3

You can put all the ruby specific configurations such as sources, ssl cert settings etc. in the .gemrc file.
You can also put ssl-certificates, if available, in the ssl_certs directory.

# Build image from the Dockerfile
docker build -t <Imagename:Tag> .
