set classname=gsemthesis


rem generates new class files
cd src/
if exist %classname%.cls (
    del %classname%.cls
)
latex %classname%.ins
pdflatex %classname%.dtx

rem copy files into the /cls directory
cd ..
cp src/gsemthesis.cls cls/
cp src/gsemthesis.pdf cls/

rem test example file
cp src/gsemthesis.cls example/
cd example/
pdflatex phdthesis-example.tex rem better to run it manually
biber phdthesis-example
cd ..

rem test example-minimal file
cp src/gsemthesis.cls example-minimal/
cd example-minimal/
pdflatex phdthesis-example-minimal.tex rem better to run it manually
biber phdthesis-example-minimal
cd ..