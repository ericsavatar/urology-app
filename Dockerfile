# https://docs.streamlit.io/knowledge-base/tutorials/deploy/docker

FROM python:3.8.3-ubuntu-20.04

WORKDIR /app

RUN apt-get update && apt-get install -y git

RUN git clone https://github.com/ericsvatar/urology-app.git .

RUN pip install -r requirements.txt

# Expose port you want your app on
EXPOSE 8501

# Run
CMD ["streamlit", "run", "main.py"]