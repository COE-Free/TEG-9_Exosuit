FROM python:3.11-slim
WORKDIR /app
COPY . .
RUN pip install fastapi uvicorn websockets matplotlib sqlite3
CMD ["uvicorn", "buckeye_sanctuary_master:app", "--host", "0.0.0.0", "--port", "8000"]