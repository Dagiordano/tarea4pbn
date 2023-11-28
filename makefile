# Makefile for creating shared object from tarea.o

EXE_NAME = libtarea.so
OBJ_FILES = tarea.o
CPP_COMPILER = g++
FLAGS = -std=c++11 -fPIC -shared

all: $(OBJ_FILES)
	$(CPP_COMPILER) $(FLAGS) $(OBJ_FILES) -o $(EXE_NAME)

$(OBJ_FILES): $(OBJ_FILES:.o=.cpp)
	$(CPP_COMPILER) -c $(FLAGS) $< -o $@

clean:
	rm -f $(OBJ_FILES) $(EXE_NAME)