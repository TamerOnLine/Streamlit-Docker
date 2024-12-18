# Use the official Python image as the base image
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy application files to the working directory
COPY . /app

# Install required Python libraries from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose the default Streamlit port
EXPOSE 8501

# Set the entry point for Streamlit
ENTRYPOINT ["streamlit", "run"]

# Command to run the Streamlit application
CMD ["app.py", "--server.port", "8501", "--server.address", "0.0.0.0"]
