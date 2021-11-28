# setup git
git init
git add .
git commit -m "Initial commit"

# setup virtual environment
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt

# configure notebook metadata
echo "author: "
read author
echo "title: "
read title

sed -i "s/author: .*/author: $author/" notebook.ipynb
sed -i "s/title: .*/title: $title/" notebook.ipynb