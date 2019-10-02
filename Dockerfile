# Use an official Python
FROM resin/raspberrypi3-python

# Set workdir to /app
WORKDIR /ros

#copy current directory contents into app
COPY . /ros

# install any needed packages specified in requirements
#RUN sudo ./scotty install --pi         depreciated

# Make port 80 available to the outside world throught this container
EXPOSE 80

# Run app.py when container launches
#CMD ["sudo","./scotty","run","--pi"]       depreciated
CMD ["./piros.sh"]
