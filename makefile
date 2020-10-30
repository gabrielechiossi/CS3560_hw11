all:
	@echo "Available Targets"
	@echo " - build: build the source code"
	@echo " - build-test: build the testing source code"
	@echo " - clean: remove all files created earlier"

build: collegemain

collegemain: collegemain.o college.o course.o
	$(CXX) -o $@ collegemain.o college.o course.o

build-test: collegemain
	$(CXX) -o $@ $<

clean:
	-rm -f *.o
	-rm -f collegemain