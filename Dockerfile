# https://docs.streamlit.io/knowledge-base/tutorials/deploy/docker

FROM python:3.8-slim

WORKDIR /app

copy . .

RUN pip install -r requirements.txt

# Expose port you want your app on
EXPOSE 8501

# Run
CMD ["streamlit", "run", "main.py"]