SOURCEPATH = src/main/java
PACKAGE = br/com/ap220191/ec04_controle_projetos
JFLAGS = -sourcepath $(SOURCEPATH)
JC = javac
.SUFFIXES: .java .class
.java.class:
	$(JC) $(JFLAGS) $*.java

CLASSES = \
	$(SOURCEPATH)/$(PACKAGE)/model/Mobilidade.java \
	$(SOURCEPATH)/$(PACKAGE)/model/Situacao.java \
	$(SOURCEPATH)/$(PACKAGE)/model/Endereco.java \
	$(SOURCEPATH)/$(PACKAGE)/model/Sexo.java \
	$(SOURCEPATH)/Main.java

default: compile

compile: $(CLASSES:.java=.class)

run: compile
	java -classpath $(SOURCEPATH) Main

clean: $(CLASSES:.java=.class)
	$(RM) $(CLASSES:.java=.class)
