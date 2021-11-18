FROM ubi8/nodejs-14 
# Add application sources to a directory that the assemble script expects them 
# and set permissions so that the container runs without root access USER 0 
ADD src /tmp/src
#RUN chown -R 1001:0 /tmp/src 
USER 0
# Install the dependencies 
RUN /usr/libexec/s2i/assemble 
# Set the default command for the resulting image 
USER 1001
CMD /usr/libexec/s2i/run
