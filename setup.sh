# setup virtual environment
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt

# configure notebook metadata
python -c "
import json
notebook = json.load(open('notebook.ipynb'))
notebook['metadata']['author'] = input('Author: ')
notebook['metadata']['title'] = input('Title: ')
json.dump(notebook, open('notebook.ipynb', 'w'))
"

# setup git
git init
git add .
git commit -m "Initial commit"