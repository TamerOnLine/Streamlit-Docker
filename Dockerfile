# Use Python 3.9 base image
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy the current directory contents to /app
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Set the entry point for Streamlit
ENTRYPOINT ["streamlit", "run"]

# Default command to run the Streamlit app
CMD ["app.py"]
