FROM python:3

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY juice_api.robot .
CMD ["robot", "--outputdir", "reports", "./juice_api.robot"]
