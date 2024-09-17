# Use an official Python runtime as a base image
FROM python:3.10-slim-buster

# Set the working directory in the container
WORKDIR /todo-app

# Copy the requirements file to the container
COPY requirements.txt requirements.txt

# Install any Python dependencies
RUN pip3 install -r requirements.txt

# Copy the rest of the application code to the working directory
COPY . .
EXPOSE 8080
# Command to run your application (replace `app.py` with your actual entry point)
CMD ["python3", "app.py"]

