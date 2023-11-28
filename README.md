# tarea4pbn
# Makefile for SWIG and C++ compilation

# Variables
SWIG = swig
COMP = g++
FLAGS = -c -fpic
PYTHON_INCLUDE = -I/usr/include/python3.10/

# Targets
all: _tarea.so

_tarea.so: tarea_wrap.o tarea.o
	$(COMP) -shared $^ -o $@

tarea_wrap.o: tarea_wrap.cxx
	$(COMP) $(FLAGS) $(PYTHON_INCLUDE) $< -o $@

tarea_wrap.cxx: tarea.i
	$(SWIG) -python -c++ $<

tarea.o: tarea.cpp
	$(COMP) $(FLAGS) $< -o $@

clean:
	rm -f _tarea.so tarea_wrap.o tarea_wrap.cxx tarea.o
