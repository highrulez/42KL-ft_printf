/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aawgku-o <aawgku-o@student.42kl.edu.my>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/30 15:57:54 by aawgku-o          #+#    #+#             */
/*   Updated: 2023/11/10 18:35:13 by aawgku-o         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

static int	checking(va_list args, const char words)
{
	int	show_length;

	show_length = 0;
	if (words == 'c')
		show_length += ft_putchar(va_arg(args, int));
	else if (words == 's')
		show_length += ft_print_s(va_arg(args, char *));
	else if (words == 'p')
		show_length += ft_print_p(va_arg(args, unsigned long long));
	else if (words == 'd' || words == 'i')
		show_length += ft_print_d(va_arg(args, int));
	else if (words == 'u')
		show_length += ft_print_u(va_arg(args, unsigned int));
	else if (words == 'x' || words == 'X')
		show_length += ft_print_x(va_arg(args, unsigned int), words);
	else if (words == '%')
		show_length += percent();
	return (show_length);
}

int	ft_printf(const char *str, ...)
{
	int		i;
	va_list	args;
	int		length;

	i = 0;
	length = 0;
	va_start(args, str);
	while (str[i])
	{
		if (str[i] == '%')
		{
			length += checking(args, str[i + 1]);
			i++;
		}
		else
			length += ft_putchar(str[i]);
		i++;
	}
	va_end(args);
	return (length);
}
