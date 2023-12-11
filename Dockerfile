# Use an official Python runtime as a parent image
FROM python:3.11.7-alpine3.18

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define environment variable
ENV AWS_ACCESS_KEY_ID=<your-access-key>
ENV AWS_SECRET_ACCESS_KEY=<your-secret-key>

# Run app.py when the container launches
CMD ["python", "app.py"]
