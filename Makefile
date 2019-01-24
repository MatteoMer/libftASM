# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mmervoye <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/01/23 15:39:46 by mmervoye          #+#    #+#              #
#    Updated: 2019/01/24 14:57:22 by mmervoye         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libfts.a
SRCS = srcs/ft_bzero.s\
	   srcs/ft_strcat.s\
	   srcs/ft_islower.s\
	   srcs/ft_isupper.s\
	   srcs/ft_isalpha.s\
	   srcs/ft_isdigit.s\
	   srcs/ft_isalnum.s\
	   srcs/ft_isascii.s\
	   srcs/ft_isprint.s\
	   srcs/ft_toupper.s\
	   srcs/ft_tolower.s\
	   srcs/ft_strlen.s\
	   srcs/ft_puts.s\
	   srcs/ft_memset.s\
	   srcs/ft_memcpy.s\
	   srcs/ft_strdup.s\
	   srcs/ft_cat.s
OBJS = $(SRCS:%.s=%.o)
AS = nasm
ASFLAGS = -f macho64

all: $(NAME)

$(NAME): $(OBJS)
	ar -rc $(NAME) $^

$(OBJS): %.o: %.s $(LHEADERS)
	$(AS) $(ASFLAGS) $< -o $@

main:
	gcc main.c $(NAME) -o main_test
clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)
	rm -f main_test

re: fclean all
