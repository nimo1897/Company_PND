#!/user/bin/env bash
# Exit on error
set -o errexit

# Run requirements
pip install -r requirements.txt

# Build static files
python manage.py collectstatic --noinput

# Run migrations
python manage.py migrate

