/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_u.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aawgku-o <aawgku-o@student.42kl.edu.my>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/06 22:15:56 by aawgku-o          #+#    #+#             */
/*   Updated: 2023/11/09 00:48:29 by aawgku-o         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int	num_len(unsigned int num)
{
	int	len;

	len = 0;
	if (num == 0)
		len = 1;
	while (num != 0)
	{
		len++;
		num = num / 10;
	}
	return (len);
}

char	*ft_uitoa(unsigned int n)
{
	int		len;
	char	*num;

	len = num_len(n);
	num = (char *)malloc(sizeof(char) * (len + 1));
	if (!num)
		return (NULL);
	num[len] = '\0';
	while (n != 0)
	{
		len--;
		num[len] = n % 10 + 48;
		n = n / 10;
	}
	return (num);
}

int	ft_print_u(unsigned int n)
{
	int		length;
	char	*num;

	length = 0;
	if (n == 0)
	{
		length += write(1, "0", 1);
	}
	else
	{
		num = ft_uitoa(n);
		length += ft_print_s(num);
		free(num);
	}
	return (length);
}
