/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aawgku-o <aawgku-o@student.42kl.edu.my>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/30 15:55:23 by aawgku-o          #+#    #+#             */
/*   Updated: 2023/11/07 02:45:37 by aawgku-o         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include "./libft/libft.h"
# include <stdarg.h> // va_list, va_start, va_arg, va_end
# include <unistd.h> // write
# include <stdlib.h> // malloc, free
// # include <limits.h> // INT_MIN, INT_MAX, UINT_MAX
// # include <stdint.h> // uintmax_t
// # include <stddef.h> // size_t
// # include <wchar.h> // wchar_t

int	ft_putchar(char c);
int	ft_printf(const char *word, ...);
int	ft_print_c(char c);
int	ft_print_d(int n);
int	ft_print_p(unsigned long value, int asc);
int	ft_print_s(char *s);
int	ft_print_u(unsigned int nb);
int	ft_print_x(unsigned int value, int asc);

# endif