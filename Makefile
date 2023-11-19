# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: emsakar <emsakar@student.42kocaeli.com.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/11 18:51:41 by emsakar           #+#    #+#              #
#    Updated: 2023/11/14 16:59:45 by emsakar          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = push_swap
FLAG = -Wall -Wextra -Werror
SRC = push_swap.c \
			function.c \
			function2.c \
			function3.c \
			rules_a.c \
			rules_b.c \
			utils.c

SRCO = $(SRC:.c=.o)

$(NAME): $(SRCO)
	gcc $(CFLAGS) $(SRCO) -o $(NAME)

all: $(NAME)

clean:
		@rm -f $(SRCO)

fclean: clean
		@rm -rf $(NAME)

re: fclean all

.phony: re fclean clean all
