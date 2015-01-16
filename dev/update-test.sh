classname=gsemthesis

# generates new class files
cd src/
if [ -e $classname.cls ]
then
  rm $classname.cls
fi
latex $classname.ins
pdflatex $classname.dtx
cd ..

# copy files into the /cls directory
cp src/gsemthesis.cls cls/
cp src/gsemthesis.pdf cls/

# test example file
cp src/gsemthesis.cls example/
cd example/
pdflatex phdthesis-example.tex # better to run it manually
biber phdthesis-example
cd ..

# test example-minimal file
cp src/gsemthesis.cls example-minimal/
cd example-minimal/
pdflatex phdthesis-example-minimal.tex # better to run it manually
biber phdthesis-example-minimal
cd ..