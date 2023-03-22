NAME = libftprintf.a

SRC = *.c

OBJ = $(SRC:.c=.o) 

FLGS = -Wall -Werror -Wextra

.c.o:
	cc $(FLGS) -c $< -o $@

all:$(NAME)

$(NAME):$(OBJ)
	cc $(FLGS) -c $(SRC)
	ar rc $(NAME) $(OBJ)

clean:
	rm -f $(OBJ) $(EXOBJ)

fclean:clean
	rm -f $(NAME)

re:	fclean all

.PHONY: all bonus clean fclean re
