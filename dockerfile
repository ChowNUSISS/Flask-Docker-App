# Use the official Python image from the Docker Hub
FROM python:3.8-slim

# Set the working directory
WORKDIR /app

# Copy requirements.txt and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Expose the port the app runs on
EXPOSE 5000

ENV FLASK_APP=app.py

# Define the command to run the app
#CMD ["python", "app.py"]
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]
