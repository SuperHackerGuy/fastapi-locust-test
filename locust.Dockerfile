# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /usr/src/locust

# Install Locust
RUN pip install locust

# Copy the Locust script
COPY locustfile.py /usr/src/locust

# Expose the Locust web UI port
EXPOSE 8089

# Command to run Locust
CMD ["locust", "--host=http://fastapi:8001"]
