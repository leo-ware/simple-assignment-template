mkdir -p out
jupyter nbconvert --to pdf notebook.ipynb --output out/notebook.pdf
zip -r out/notebook.zip notebook.ipynb out/notebook.pdf
