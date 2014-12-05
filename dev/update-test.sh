classname=gsemthesis

# generates new class files
cd src/
if [ -e $classname.cls ]
then
  rm $classname.cls
fi
latex $classname.ins
pdflatex $classname.dtx

# copy files into the /cls directory
cd ..
cp src/gsemthesis.cls cls/
cp src/gsemthesis.pdf cls/

# test example file
cp src/gsemthesis.cls example/
cd example/
pdflatex phdthesis-example.tex # better to run it manually
biber phdthesis-example