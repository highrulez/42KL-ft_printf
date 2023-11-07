/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_x.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aawgku-o <aawgku-o@student.42kl.edu.my>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/06 22:15:58 by aawgku-o          #+#    #+#             */
/*   Updated: 2023/11/07 02:23:06 by aawgku-o         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

static char	*new_string(unsigned int value, int *strlen)
{
	int				i;
	unsigned int	temp;
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

int	ft_print_x(unsigned int value, int asc)
{
	unsigned int	tempval;
	char			*output;
	int				i;
	int				*ptr;

	ptr = &i;
	tempval = value;
	output = new_string(value, ptr);
	if (!output)
		return (0);
	while (tempval != 0)
	{
		if ((tempval % 16) < 10)
			output[i] = (tempval % 16) + 48;
		else
			output[i] = (tempval % 16) + asc;
		tempval = tempval / 16;
		i--;
	}
	ft_putstr_fd(output, 1);
	i = ft_strlen(output);
	free(output);
	if (value == 0)
		i += ft_print_c('0');
	return (i);
}
