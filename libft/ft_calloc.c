/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_calloc.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aawgku-o <aawgku-o@student.42kl.edu.my>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/16 21:21:58 by aawgku-o          #+#    #+#             */
/*   Updated: 2023/10/25 02:06:18 by aawgku-o         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_calloc(size_t count, size_t size)
{
	void	*ptr;

	if ((size != 0 && count > UINT_MAX / size)
		|| (count != 0 && size > UINT_MAX / count))
	{
		return (0);
	}
	ptr = (void *)malloc(count * size);
	if (!ptr)
	{
		return (0);
	}
	else
	{
		ft_bzero(ptr, count * size);
	}
	return (ptr);
}
