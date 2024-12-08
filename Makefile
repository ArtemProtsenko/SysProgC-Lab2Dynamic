NAME = libstatic.a

all: $(NAME)

$(NAME): Database.o Employee.o Policy.o
	ar cr $@ $^

%.o: %.cpp
	g++ -Wall -c $< -o $@

clean:
	rm -f *.o *.a $(NAME)