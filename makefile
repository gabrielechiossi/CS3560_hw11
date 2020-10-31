CXXFLAGS= -Wall -I./lib

all:
	@echo "Available Targets"
	@echo " - build: build the source code"
	@echo " - build-test: build the testing source code"
	@echo " - clean: remove all files created earlier"

build: collegemain

collegemain: collegemain.o college.o course.o
	g++ -o collegemain.exe collegemain.o college.o course.o

build-test: collegemain-test
	
collegemain-test: test_college.o college.o 
	g++ -o collegemain-test test_college.o college.o

clean:
	-rm -f *.o
	-rm -f collegemain
	-rm -f *.exe
	-rm -f *.out