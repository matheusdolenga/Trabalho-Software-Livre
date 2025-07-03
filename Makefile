CXX = g++
CXXFLAGS = -Wall -Wextra

EXES = matriz primo vetor

all: $(EXES)

%: %.cpp
	$(CXX) $(CXXFLAGS) -o $@ $<

clean:
	rm -f $(EXES)

.PHONY: all clean
