# Use an official Python runtime as a parent image
FROM python:3.9-slim
# Set the working directory in the container
WORKDIR /app
# Copy the current directory contents into the container
COPY ./book_catalog .
# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt
# Make port 80 available to the world outside this container
EXPOSE 80
# Run the application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]

# Explanations:

#     FROM: This line is for establishing the base image as Python 3.9
#     WORKDIR: This line defines the working directory inside the container
#     COPY: The command copies the content of the current directory to the container
#     RUN: This command installs Python dependencies
#     EXPOSE: Exposing port 80 for the app
#     CMD: Runs FastAPI app with uvicorn