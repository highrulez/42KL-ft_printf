# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aawgku-o <aawgku-o@student.42kl.edu.my>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/30 15:54:04 by aawgku-o          #+#    #+#              #
#    Updated: 2023/11/07 02:55:25 by aawgku-o         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME 		= libftprintf.a
LIBFTNAME 	= libft.a
CC 			= cc
CFLAGS 		= -Wall -Werror -Wextra
LIBFTDIR 	= libft/
SRCS_DIR 	= srcs/
SRCS_FILES	= ft_printf.c ft_print_c ft_print_d \
			  ft_print_p ft_print_s ft_print_u ft_print_x \
RM 			= rm -f

SRCS 		= $(addprefix $(SRCS_DIR), $(SRCS_FILES))
OBJS 		= $(SRCS:.c=.o)

all: 		  $(NAME)

makelibft:
			  @make -C $(LIBFTDIR)
			  @cp $(LIBFTDIR)/$(LIBFTNAME) .
			  @mv $(LIBFTNAME) $(NAME)

$(NAME): 	  makelibft $(OBJS)
			  @ar -r $(NAME) $(OBJS)

clean:
			  @$(RM) $(OBJS)
			  @cd $(LIBFTDIR) && make clean
	
fclean: 	  clean
			  @$(RM) $(NAME)
			  @cd $(LIBFTDIR) && make fclean
	
re: 		  fclean all
