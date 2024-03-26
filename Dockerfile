FROM python:3.9

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY "Garmin_Running_LLM_Analysis.ipynb" "/usr/src/app/Garmin_Running_LLM_Analysis.ipynb"

COPY "14041604082_ACTIVITY.fit" "/content/14041604082_ACTIVITY.fit"

COPY "requirements.txt" "/usr/src/app/requirements.txt"

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

RUN pip install nbconvert

RUN jupyter nbconvert --to script /usr/src/app/Garmin_Running_LLM_Analysis.ipynb --output /usr/src/app/Garmin_Running_LLM_Analysis.py

RUN mv /usr/src/app/Garmin_Running_LLM_Analysis.py.txt /usr/src/app/Garmin_Running_LLM_Analysis.py

COPY "script.sh" "/usr/src/app/script.sh"

# Run script.py when the container launches
CMD ["sh", "./script.sh"]