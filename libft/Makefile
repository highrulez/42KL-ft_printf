# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aawgku-o <aawgku-o@student.42kl.edu.my>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/21 16:38:17 by aawgku-o          #+#    #+#              #
#    Updated: 2023/11/08 22:59:08 by aawgku-o         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME 			= libft.a

SRCS			= 	ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c ft_itoa.c \
		  	  		ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memmove.c ft_memset.c ft_putchar_fd.c ft_putendl_fd.c ft_putnbr_fd.c \
		      		ft_putstr_fd.c ft_split.c ft_strchr.c ft_strdup.c ft_striteri.c ft_strjoin.c ft_strlcat.c ft_strlcpy.c \
		      		ft_strlen.c ft_strmapi.c ft_strncmp.c ft_strnstr.c ft_strrchr.c ft_strtrim.c ft_substr.c ft_tolower.c ft_toupper.c \

OBJS			= $(SRCS:.c=.o)

CC 				= cc
CFLAGS			= -Wall -Wextra -Werror -I.
RM				= rm -f

all:			$(NAME)

$(NAME):		$(OBJS)
				@ar rcs $(NAME) $(OBJS)

clean:		
				@$(RM) $(OBJS)

fclean:			clean
				@$(RM) $(NAME)
			
re:				fclean $(NAME)

.PHONY: 		all clean fclean re


