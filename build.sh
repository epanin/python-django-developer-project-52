#!/usr/bin/env bash
# Exit on error
set -o errexit

# Modify this line as needed for your package manager (pip, poetry, etc.)
#pip install -r requirements.txt
poetry install

# Convert static asset files
python manage.py collectstatic --no-input

# Apply any outstanding database migrations
python manage.py migrate

#if [[ $CREATE_SUPERUSER ]];
#then
#  python manage.py createsuperuser --no-input --username panini --email fath34d@gmail.com
#fi

python manage.py changepassword 
echo fyfcnfcbz84
echo fyfcnfcbz84