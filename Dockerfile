FROM phpcoder/robotframework:3.2.1-1
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
