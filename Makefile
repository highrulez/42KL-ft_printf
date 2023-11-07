# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aawgku-o <aawgku-o@student.42kl.edu.my>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/30 15:54:04 by aawgku-o          #+#    #+#              #
#    Updated: 2023/11/08 04:21:06 by aawgku-o         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME 		= libftprintf.a
LIBFTNAME 	= libft.a
CC 			= cc
CFLAGS 		= -Wall -Werror -Wextra -I.
LIBFTDIR 	= ./libft
SRCSDIR		= ./srcs

SRCS 		= ft_printf.c $(addprefix $(SRCSDIR)/, ft_print_c.c ft_print_d.c \
			  ft_print_p.c ft_print_s.c ft_print_u.c ft_print_x.c ft_putchar.c \
			  percent.c)

OBJS 		= $(SRCS:.c=.o)

all: 		  $(NAME)

makelibft:
			  @make -C $(LIBFTDIR)
			  @cp $(LIBFTDIR)/$(LIBFTNAME) .
			  @mv $(LIBFTNAME) $(NAME)

$(NAME): 	  makelibft $(OBJS)
			  @ar -rcs $(NAME) $(OBJS)
			  @echo "All ft_printf files compiled successfully!"

clean:
			  @rm -f $(OBJS)
			  @cd $(LIBFTDIR) && make clean
	
fclean: 	  clean
			  @rm -f $(NAME)
			  @cd $(LIBFTDIR) && make fclean
	
re: 		  fclean all
