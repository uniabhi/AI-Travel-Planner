FROM python:3.10-slim

WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY run_server.py .
COPY travel_app.py .
COPY start.sh .

# Make the script executable
RUN chmod +x /app/start.sh

# Expose ports
EXPOSE 8000
EXPOSE 8501

# Command to run the script
CMD ["/app/start.sh"]