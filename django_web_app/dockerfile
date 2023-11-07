FROM python:latest

# Set the working directory to /app
WORKDIR /app

# Copy the Django project files into the container
COPY . .

# Install required Python packages from requirements.txt
RUN pip install -r requirements.txt

# Expose the Django development port
EXPOSE 8000

# Start the Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]