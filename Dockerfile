# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on (optional)
EXPOSE 5000

# Define environment variable (optional)
ENV PYTHONUNBUFFERED=1

# Run the application
CMD ["python", "app.py"]
