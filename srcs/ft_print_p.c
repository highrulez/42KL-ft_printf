/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_p.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aawgku-o <aawgku-o@student.42kl.edu.my>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/06 22:15:39 by aawgku-o          #+#    #+#             */
/*   Updated: 2023/11/07 01:57:15 by aawgku-o         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

static char	*new_string(unsigned long value, int *strlen)
{
	int				i;
	unsigned long	temp;
	char			*str;

	i = 0;
	temp = value;
	while (temp != 0)
	{
		temp = temp / 16;
		i++;
	}
	str = calloc(i + 1, sizeof(char));
	*strlen = i - 1;
	return (str);
}

int	ft_print_p(unsigned long value, int asc)
{
	unsigned long	tempv;
	char			*output;
	int				i;
	int				*ptr;

	ptr = &i;
	tempv = value;
	output = new_string(value, ptr);
	if (!output)
		return (0);
	while (tempv != 0 && i-- >= 0)
	{
		if ((tempv % 16) < 10)
			output[i + 1] = (tempv % 16) + 48;
		else
			output[i + 1] = (tempv % 16) + asc;
		tempv = tempv / 16;
	}
	i = ft_strlen(output);
	i = i + ft_print_s("0x");
	ft_putstr_fd(output, 1);
	free(output);
	if (value == 0)
		i += ft_print_c('0');
	return (i);
}
