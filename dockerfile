# Step 1: Use official Python image
FROM python:3.10-slim

# Step 2: Set working directory inside container
WORKDIR /app

# Step 3: Copy requirements file
COPY requirements.txt .

# Step 4: Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Copy application code
COPY app.py .

# Step 6: Expose port
EXPOSE 5000

# Step 7: Run the application
CMD ["python", "app.py"]