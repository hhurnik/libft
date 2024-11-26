Library    = libft
files      := $(wildcard *.c) # Update to only find .c files

Compiler   = gcc
CmpFlags   = -Wall -Wextra -Werror
OUTN       = $(Library).a

# Substitute '.c' with '.o' to create object file names
OFILES     = $(files:.c=.o)
NAME       = $(OUTN)

# Compile each source file into object files
%.o: %.c
	$(Compiler) $(CmpFlags) -c $< -o $@

$(NAME): $(OFILES)
	ar -rc $(OUTN) $(OFILES)

all: $(NAME)

clean:
	rm -f $(OFILES)

fclean: clean
	rm -f $(OUTN)

re: fclean all

.PHONY: all clean fclean re
