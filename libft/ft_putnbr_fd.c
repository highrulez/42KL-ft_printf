/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnbr_fd.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aawgku-o <aawgku-o@student.42kl.edu.my>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/21 18:29:23 by aawgku-o          #+#    #+#             */
/*   Updated: 2023/10/22 23:05:45 by aawgku-o         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_putnbr_fd(int n, int fd)
{
	char	result[12];
	int		i;
	int		sign;

	i = 0;
	sign = 1;
	if (n < 0)
		sign = -1;
	while (n)
	{
		result[i++] = (n % 10) * sign + '0';
		n /= 10;
	}
	if (sign == -1)
		result[i++] = '-';
	if (i == 0)
		result[i++] = '0';
	while (--i >= 0)
		write(fd, &result[i], 1);
}
