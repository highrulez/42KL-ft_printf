/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_split.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aawgku-o <aawgku-o@student.42kl.edu.my>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/16 17:03:37 by aawgku-o          #+#    #+#             */
/*   Updated: 2023/10/31 15:32:39 by aawgku-o         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static size_t	length(char const *s, char c)
{
	size_t	count;

	count = 0;
	while (*s != '\0')
	{
		if (*s != c)
		{
			++count;
			while (*s != 0 && *s != c)
				++s;
		}
		else
			++s;
	}
	return (count);
}

char	**ft_split(char const *s, char c)
{
	char	**str;
	size_t	i;
	size_t	k;

	i = 0;
	if (!s)
		return (NULL);
	str = malloc(sizeof(char *) * (length(s, c) + 1));
	if (!str)
		return (NULL);
	while (*s != '\0')
	{
		if (*s != c)
		{
			k = 0;
			while (*s && *s != c && ++k)
				++s;
			str[i++] = ft_substr(s - k, 0, k);
		}
		else
			++s;
	}
	str[i] = NULL;
	return (str);
}
