FROM python:3.9-slim

WORKDIR /app

COPY .github/scripts /app/scripts
COPY .github/scripts/frequency.py /app/frequency.py
COPY .github/scripts/update_readme.sh /app/update_readme.sh

RUN pip install --no-cache-dir -r /app/requirements.txt

ENTRYPOINT ["bash", "/app/scripts/entrypoint.sh"]
