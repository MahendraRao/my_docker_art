FROM alpine:latest

# Copy the art.txt and show_art.sh files into the container
COPY art.txt /art.txt
COPY show_art.sh /show_art.sh

# Make sure the show_art.sh script is executable
RUN chmod +x /show_art.sh

# Set the entrypoint to run show_art.sh
ENTRYPOINT ["/bin/sh", "/show_art.sh"]
