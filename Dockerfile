FROM python:3.11.7-slim-bullseye

COPY app.py app.py
COPY database.py database.py
COPY models.py Models.py
COPY templates/base.html templates/base.html
COPY Requirements.txt Requirements.txt

RUN pip install -r Requirements.txt

ENTRYPOINT [ "python","app.py" ]