# configure notebook metadata
python3 -c "
import json
notebook = json.load(open('notebook.ipynb'))
notebook['metadata']['author'] = input('Author: ')
notebook['metadata']['title'] = input('Title: ')
json.dump(notebook, open('notebook.ipynb', 'w'))
"

# setup virtual environment
python3 -m venv venv
source venv/bin/activate
pip3 install -r requirements.txt

# setup git
git init
git add .
git commit -m "Initial commit"
