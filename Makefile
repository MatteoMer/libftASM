# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mmervoye <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/01/23 15:39:46 by mmervoye          #+#    #+#              #
#    Updated: 2019/01/23 18:07:33 by mmervoye         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libfts.a
SRCS = srcs/ft_bzero.s\
	   srcs/ft_strcat.s
OBJS = $(SRCS:%.s=%.o)
AS = nasm
ASFLAGS = -f macho64

all: $(NAME)

$(NAME): $(OBJS)
	ar -rc $(NAME) $^

$(OBJS): %.o: %.s $(LHEADERS)
	$(AS) $(ASFLAGS) $< -o $@

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all
