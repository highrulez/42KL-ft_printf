/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strdup.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aawgku-o <aawgku-o@student.42kl.edu.my>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/16 17:03:42 by aawgku-o          #+#    #+#             */
/*   Updated: 2023/10/25 03:29:34 by aawgku-o         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strdup(char *src)
{
	int		xoxo;
	int		i;
	char	*length;

	i = 0;
	while (src[i] != '\0')
	{
		i++;
	}
	xoxo = 0;
	length = (char *)malloc(i + 1);
	if (!length)
		return (NULL);
	while (src[xoxo] != '\0')
	{
		length[xoxo] = src[xoxo];
		xoxo++;
	}
	length[xoxo] = '\0';
	return (length);
}
