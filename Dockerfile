# Use an existing docker image as base
FROM alpine

# download and install dependency
RUN apk add --update gcc
RUN apk add --update redis

# tell the image what to do and when it starts
# as a container
CMD [ "redis-server" ]
## instead of dockerfile or you can run it in command line
# docker run -it alpine sh
# docker ps (in another window)
# docker commit -c 'CMD ["redis-server"]' id of the container
# docker run the long unique code