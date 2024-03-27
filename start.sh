#! /bin/bash

echo "Running Script"
sed -i '/^!pip/d' /usr/src/app/Garmin_Running_LLM_Analysis.py
sed -i '/^display/d' /usr/src/app/Garmin_Running_LLM_Analysis.py
sed -i '/^!echo/d' /usr/src/app/Garmin_Running_LLM_Analysis.py
sed -i '/^!curl/d' /usr/src/app/Garmin_Running_LLM_Analysis.py
sed -i '/^!apt/d' /usr/src/app/Garmin_Running_LLM_Analysis.py
sed -i '/^!mkdir/d' /usr/src/app/Garmin_Running_LLM_Analysis.py
sed -i '/^!/d' /usr/src/app/Garmin_Running_LLM_Analysis.py
sed -i '/^[ \t]*!pip/d' /usr/src/app/Garmin_Running_LLM_Analysis.py
sed -i '/^[ \t]*!curl/d' /usr/src/app/Garmin_Running_LLM_Analysis.py
sed -i '/^[ \t]*!display/d' /usr/src/app/Garmin_Running_LLM_Analysis.py
sed -i '/^[ \t]*!mkdir/d' /usr/src/app/Garmin_Running_LLM_Analysis.py
sed -i '/^[ \t]*!/d' /usr/src/app/Garmin_Running_LLM_Analysis.py
python /usr/src/app/Garmin_Running_LLM_Analysis.py
echo "Done!"