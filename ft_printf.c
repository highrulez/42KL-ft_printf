/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aawgku-o <aawgku-o@student.42kl.edu.my>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/30 15:57:54 by aawgku-o          #+#    #+#             */
/*   Updated: 2023/11/07 02:55:29 by aawgku-o         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

static int	check_type(const char *word, void *arg)
{
	int	length;

	length = 0;
	if (*word == 'c')
		length += ft_print_c((int)arg);
	else if (*word == 's')
		length += ft_print_s((char *)arg);
	else if (*word == 'p')
		length += ft_print_p((unsigned long)arg, 87);
	else if (*word == 'd')
		length += ft_print_d((int)arg);
	else if (*word == 'i')
		length += ft_print_d((int)arg);
	else if (*word == 'u')
		length += ft_print_u((unsigned int)arg);
	else if (*word == 'x')
		length += ft_print_x((unsigned int)arg, 87);
	else if (*word == 'X')
		length += ft_print_x((unsigned int)arg, 55);
	return (length);
}

int	ft_printf(const char *word, ...)
{
	va_list			args;
	unsigned int	i;

	i = 0;
	va_start(args, word);
	while (*word != '\0')
	{
		if (*word == '%')
		{
			word++;
			if (ft_strchr("cspdiuxX", *word))
			{
				i += check_type(word, va_arg(args, void *));
			}
			else if (*word == '%')
			{
				i += ft_putchar('%');
			}
		}
		else
			i = i + ft_putchar(*word);
		word++;
	}
	va_end(args);
	return (i);
}
