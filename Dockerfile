# Use an official Python runtime as a parent image
FROM node:8

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . ${WORKDIR}
ADD ./events-db events-db/
ADD ./routes routes/

# Make port 80 available
EXPOSE 80
EXPOSE 3000

# Set server port to 80
ENV PORT 80


# Install any needed packages specified in package.json
RUN npm install

# Run NPM start to start instance
CMD ["node", "index.js"]