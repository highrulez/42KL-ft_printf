/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aawgku-o <aawgku-o@student.42kl.edu.my>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/30 15:55:23 by aawgku-o          #+#    #+#             */
/*   Updated: 2023/11/09 04:13:03 by aawgku-o         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include "./libft/libft.h"
# include <stdarg.h> // va_list, va_start, va_arg, va_end
# include <unistd.h> // write
# include <stdlib.h> // malloc, free
# include <stdint.h> // uintmax_t

# if defined (__linux__)
#  define PTR0 "(nil)"
# elif defined (__APPLE__)
#  define PTR0 "0x0"
# endif

int	ft_printpercent(void);
int	ft_printf(const char *str, ...);
int	ft_putchar(char c);
int	percent(void);
int	ft_print_s(char *s);
int	ft_print_p(unsigned long long ptr);
int	ft_print_d(int n);
int	ft_print_u(unsigned int n);
int	ft_print_x(unsigned int num, const char format);

#endif
