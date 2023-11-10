# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aawgku-o <aawgku-o@student.42kl.edu.my>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/30 15:54:04 by aawgku-o          #+#    #+#              #
#    Updated: 2023/11/10 21:42:33 by aawgku-o         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

DEF_COLOR='\033[0;39m'
BLACK='\033[0;30m'
RED='\033[1;91m'
GREEN='\033[1;92m'
YELLOW='\033[0;93m'
BLUE='\033[0;94m'
MAGENTA='\033[0;95m'
CYAN='\033[0;96m'
GRAY='\033[0;90m'
WHITE='\033[0;97m'

NAME 		= libftprintf.a
LIBFTNAME 	= libft.a
HEADERDIR 	= ./header
CC 			= cc
CFLAGS 		= -Wall -Werror -Wextra -I $(HEADERDIR) -I $(LIBFTDIR)
LIBFTDIR 	= ./libft
SRCSDIR		= ./srcs
MAINDIR		= ./main

SRCS 		= $(addprefix $(MAINDIR)/, ft_printf.c) $(addprefix $(SRCSDIR)/, ft_print_c.c ft_print_d.c \
			  ft_print_p.c ft_print_s.c ft_print_u.c ft_print_x.c ft_putchar.c \
			  percent.c)

OBJS 		= $(SRCS:.c=.o)
RM			= rm -f *.out

MAKEFLAGS 	+= --no-print-directory --silent

.SILENT:

all: 		  $(NAME)

makelibft:
			  @make -C $(LIBFTDIR)
			  @cp $(LIBFTDIR)/$(LIBFTNAME) .
			  @mv $(LIBFTNAME) $(NAME)

$(NAME): 	  compiling makelibft clear_lines complete $(OBJS)
			  @ar -rcs $(NAME) $(OBJS)

clean:		  clear_lines cleans
			  @$(RM) $(OBJS)
			  @cd $(LIBFTDIR) && make clean
	
fclean: 	  clear_lines ffclean
			  @$(RM) $(NAME) $(OBJS)
			  @cd $(LIBFTDIR) && make fclean
	
re: 		  clear_lines fclean all

cleans:
	@echo "\n"
	@echo ${BLUE}" ::::::::  :::        ::::::::::     :::     ::::    ::: ::::::::::: ::::    :::  ::::::::              "${DEF_COLOR}
	@echo ${BLUE}":+:    :+: :+:        :+:          :+: :+:   :+:+:   :+:     :+:     :+:+:   :+: :+:    :+:             "${DEF_COLOR}
	@echo ${BLUE}":+:        +:+        +:+         +:+   +:+  :+:+:+  +:+     +:+     :+:+:+  +:+ +:+                    "${DEF_COLOR}
	@echo ${BLUE}"+#+        +#+        +#++:++#   +#++:++#++: +#+ +:+ +#+     +#+     +#+ +:+ +#+ :#:                    "${DEF_COLOR}
	@echo ${CYAN}"+#+        +#+        +#+        +#+     +#+ +#+  +#+#+#     +#+     +#+  +#+#+# +#+   +#+#             "${DEF_COLOR}
	@echo ${CYAN}"#+#    #+# #+#        #+#        #+#     #+# #+#   #+#+#     #+#     #+#   #+#+# #+#    #+# #+# #+# #+# "${DEF_COLOR}
	@echo ${CYAN}" ########  ########## ########## ###     ### ###    #### ########### ###    ####  ########  ### ### ###  "${DEF_COLOR}
	@echo "\n"
	@sleep 0.2 &&	echo ${BLUE}"\033[1A\033[KCleaning in progress.. ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ 0%"${DEF_COLOR}
	@sleep 0.2 &&	echo ${BLUE}"\033[1A\033[KCleaning in progress.. █████▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ 10%"${DEF_COLOR}
	@sleep 0.2 &&	echo ${BLUE}"\033[1A\033[KCleaning in progress.. ████████▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ 20%"${DEF_COLOR}
	@sleep 0.2 &&	echo ${BLUE}"\033[1A\033[KCleaning in progress.. ███████████▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ 30%"${DEF_COLOR}
	@sleep 0.2 &&	echo ${BLUE}"\033[1A\033[KCleaning in progress.. ██████████████▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ 40%"${DEF_COLOR}
	@sleep 0.2 &&	echo ${BLUE}"\033[1A\033[KCleaning in progress.. █████████████████▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ 50%"${DEF_COLOR}
	@sleep 0.2 &&	echo ${BLUE}"\033[1A\033[KCleaning in progress.. ████████████████████▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ 60%"${DEF_COLOR}
	@sleep 0.2 &&	echo ${BLUE}"\033[1A\033[KCleaning in progress.. ███████████████████████▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ 70%"${DEF_COLOR}
	@sleep 0.2 &&	echo ${BLUE}"\033[1A\033[KCleaning in progress.. ███████████████████████████████▒▒▒▒▒▒▒▒▒ 80%"${DEF_COLOR}
	@sleep 0.2 &&	echo ${BLUE}"\033[1A\033[KCleaning in progress.. ███████████████████████████████████▒▒▒▒▒ 90%"${DEF_COLOR}
	@sleep 0.2 &&	echo ${BLUE}"\033[1A\033[KCleaning in progress.. ████████████████████████████████████████ 100%"${DEF_COLOR}
	@sleep 0.2 &&	echo "\033[1A\033[K" 
	@sleep 0.1 &&	echo ${BLUE}"\033[1A\033[KDONE! ████████████████████████████████████████ 100%!\n"${DEF_COLOR}


ffclean:
	@echo "\n"
	@echo ${MAGENTA}":::::::::: ::::::::  :::        ::::::::::     :::     ::::    :::         "
	@echo ${MAGENTA}":+:       :+:    :+: :+:        :+:          :+: :+:   :+:+:   :+:         "
	@echo ${MAGENTA}"+:+       +:+        +:+        +:+         +:+   +:+  :+:+:+  +:+         "
	@echo ${MAGENTA}":#::+::#  +#+        +#+        +#++:++#   +#++:++#++: +#+ +:+ +#+         "
	@echo ${GRAY}"+#+       +#+        +#+        +#+        +#+     +#+ +#+  +#+#+#         "
	@echo ${GRAY}"#+#       #+#    #+# #+#        #+#        #+#     #+# #+#   #+#+# #+# #+# "
	@echo ${GRAY}"###        ########  ########## ########## ###     ### ###    #### ### ###  "
	@echo "\n"
	@sleep 0.5 &&	echo ${MAGENTA}"\033[1A\033[KCleaning in progress.. ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ 0%"${DEF_COLOR}
	@sleep 0.5 &&	echo ${MAGENTA}"\033[1A\033[KCleaning in progress.. █████▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ 10%"${DEF_COLOR}
	@sleep 0.5 &&	echo ${MAGENTA}"\033[1A\033[KCleaning in progress.. ████████▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ 20%"${DEF_COLOR}
	@sleep 0.5 &&	echo ${MAGENTA}"\033[1A\033[KCleaning in progress.. ███████████▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ 30%"${DEF_COLOR}
	@sleep 0.5 &&	echo ${MAGENTA}"\033[1A\033[KCleaning in progress.. ██████████████▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ 40%"${DEF_COLOR}
	@sleep 0.5 &&	echo ${MAGENTA}"\033[1A\033[KCleaning in progress.. █████████████████▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ 50%"${DEF_COLOR}
	@sleep 0.5 &&	echo ${MAGENTA}"\033[1A\033[KCleaning in progress.. ████████████████████▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ 60%"${DEF_COLOR}
	@sleep 0.5 &&	echo ${MAGENTA}"\033[1A\033[KCleaning in progress.. ███████████████████████▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ 70%"${DEF_COLOR}
	@sleep 0.5 &&	echo ${MAGENTA}"\033[1A\033[KCleaning in progress.. ███████████████████████████████▒▒▒▒▒▒▒▒▒ 80%"${DEF_COLOR}
	@sleep 0.5 &&	echo ${MAGENTA}"\033[1A\033[KCleaning in progress.. ███████████████████████████████████▒▒▒▒▒ 90%"${DEF_COLOR}
	@sleep 0.5 &&	echo ${MAGENTA}"\033[1A\033[KCleaning in progress.. ████████████████████████████████████████ 100%"${DEF_COLOR}
	@sleep 0.2 &&	echo "\033[1A\033[K"
	@sleep 0.1 &&	echo ${MAGENTA}"\033[1A\033[KDONE! ████████████████████████████████████████ 100%!\n"${DEF_COLOR}

compiling:
	@echo "\n"
	@echo ${GREEN}" ::::::::   ::::::::  ::::    ::::  ::::::::: ::::::::::: :::        ::::::::::: ::::    :::  ::::::::"${DEF_COLOR}
	@echo ${GREEN}":+:    :+: :+:    :+: +:+:+: :+:+:+ :+:    :+:    :+:     :+:            :+:     :+:+:   :+: :+:    :+:"${DEF_COLOR}
	@echo ${GREEN}"+:+        +:+    +:+ +:+ +:+:+ +:+ +:+    +:+    +:+     +:+            +:+     :+:+:+  +:+ +:+"${DEF_COLOR}
	@echo ${GREEN}"+#+        +#+    +#+ +#+  +:+  +#+ +#++:++#+     +#+     +#+            +#+     +#+ +:+ +#+ :#:"${DEF_COLOR}
	@echo ${YELLOW}"+#+        +#+    +#+ +#+       +#+ +#+           +#+     +#+            +#+     +#+  +#+#+# +#+   +#+#"${DEF_COLOR}
	@echo ${YELLOW}" +#    #+# #+#    #+# #+#       #+# #+#           #+#     #+#            #+#     #+#   #+#+# #+#    #+# #+# #+# #+"${DEF_COLOR}
	@echo ${YELLOW}" ########   ########  ###       ### ###       ########### ########## ########### ###    ####  ########  ### ### ###"${DEF_COLOR}
	@echo "\n"
	@sleep 0.2 &&	echo ${GREEN}"\033[1A\033[KPlease Wait.. ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ 0%"${DEF_COLOR}
	@sleep 0.5 &&	echo ${GREEN}"\033[1A\033[KPlease Wait.. █████▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ 10%"${DEF_COLOR}
	@sleep 0.5 &&	echo ${GREEN}"\033[1A\033[KPlease Wait.. ████████▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ 20%"${DEF_COLOR}
	@sleep 0.5 &&	echo ${GREEN}"\033[1A\033[KPlease Wait.. ███████████▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ 30%"${DEF_COLOR}
	@sleep 0.2 &&	echo ${GREEN}"\033[1A\033[KPlease Wait.. ██████████████▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ 40%"${DEF_COLOR}
	@sleep 0.5 &&	echo ${GREEN}"\033[1A\033[KPlease Wait.. █████████████████▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ 50%"${DEF_COLOR}
	@sleep 0.5 &&	echo ${GREEN}"\033[1A\033[KPlease Wait.. ████████████████████▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ 60%"${DEF_COLOR}
	@sleep 0.2 &&	echo ${GREEN}"\033[1A\033[KPlease Wait.. ███████████████████████▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ 70%"${DEF_COLOR}
	@sleep 0.2 &&	echo ${GREEN}"\033[1A\033[KPlease Wait.. ███████████████████████████████▒▒▒▒▒▒▒▒▒ 80%"${DEF_COLOR}
	@sleep 0.5 &&	echo ${GREEN}"\033[1A\033[KPlease Wait.. ███████████████████████████████████▒▒▒▒▒ 90%"${DEF_COLOR}
	@sleep 0.2 &&	echo ${GREEN}"\033[1A\033[KPlease Wait.. ████████████████████████████████████████ 100%"${DEF_COLOR}
	@sleep 2 &&	echo "\033[1A\033[K"

complete:
	@echo "\n"
	@echo ${RED}" ::::::::   ::::::::  ::::    ::::  :::::::::  :::        :::::::::: ::::::::::: :::::::::: ::: "${DEF_COLOR}
	@echo ${RED}":+:    :+: :+:    :+: +:+:+: :+:+:+ :+:    :+: :+:        :+:            :+:     :+:        :+: "${DEF_COLOR}
	@echo ${RED}"+:+        +:+    +:+ +:+ +:+:+ +:+ +:+    +:+ +:+        +:+            +:+     +:+        +:+ "${DEF_COLOR}
	@echo ${RED}"+#+        +#+    +#+ +#+  +:+  +#+ +#++:++#+  +#+        +#++:++#       +#+     +#++:++#   +#+ "${DEF_COLOR}
	@echo ${RED}"+#+        +#+    +#+ +#+       +#+ +#+        +#+        +#+            +#+     +#+        +#+ "${DEF_COLOR}
	@echo ${RED}"#+#    #+# #+#    #+# #+#       #+# #+#        #+#        #+#            #+#     #+#            "${DEF_COLOR}
	@echo ${RED}" ########   ########  ###       ### ###        ########## ##########     ###     ########## ### "${DEF_COLOR}
	@echo "\n"

clear_lines:
	@echo -e "\033[2J"
	@echo -e "\033[H"
	@tput clear || printf "\033c"
