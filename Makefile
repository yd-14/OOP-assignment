CXX       := g++
CXX_FLAGS := -std=c++17 -ggdb

all: bin/main

run: clean all
	clear
	./bin/main

bin/main: src/*
	$(CXX) $(CXX_FLAGS) $^ -I include -o bin/main 

clean:
	-rm bin/main		