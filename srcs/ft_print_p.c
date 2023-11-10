/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_p.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aawgku-o <aawgku-o@student.42kl.edu.my>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/06 22:15:39 by aawgku-o          #+#    #+#             */
/*   Updated: 2023/11/09 04:13:06 by aawgku-o         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int	ptr_length(uintptr_t num)
{
	int	len;

	len = 0;
	while (num != 0)
	{
		len++;
		num = num / 16;
	}
	return (len);
}

void	putptr(uintptr_t num)
{
	if (num >= 16)
	{
		putptr(num / 16);
		putptr(num % 16);
	}
	else
	{
		if (num <= 9)
			ft_putchar_fd((num + '0'), 1);
		else
			ft_putchar_fd((num - 10 + 'a'), 1);
	}
}

int	ft_print_p(unsigned long long ptr)
{
	int	length;

	length = 0;
	if (ptr == 0)
		length += write(1, PTR0, sizeof(PTR0) - 1);
	else
	{
		length += write(1, "0x", 2);
		putptr(ptr);
		length += ptr_length(ptr);
	}
	return (length);
}
