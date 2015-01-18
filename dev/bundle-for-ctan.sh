mkdir gsemthesis
cp README.md gsemthesis/README
cp src/gsemthesis.ins gsemthesis/
cp src/gsemthesis.dtx gsemthesis/
cp src/gsemthesis.pdf gsemthesis/
zip -r gsemthesis.zip gsemthesis
rm -r gsemthesis