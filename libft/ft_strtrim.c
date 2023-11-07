/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strtrim.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+
	+:+     */
/*   By: aawgku-o <aawgku-o@student.42kl.edu.my>    +#+  +:+
	+#+        */
/*                                                +#+#+#+#+#+
	+#+           */
/*   Created: 2023/10/21 16:50:03 by aawgku-o          #+#    #+#             */
/*   Updated: 2023/10/21 16:50:03 by aawgku-o         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static int	ft_isinset(char c, char const *set)
{
	while (*set)
		if (c == *set++)
			return (1);
	return (0);
}

char	*ft_strtrim(char const *s1, char const *set)
{
	char	*trim;
	size_t	len;

	if (!s1 || !set)
		return (NULL);
	while (*s1 && ft_isinset(*s1, set))
		s1++;
	len = ft_strlen(s1);
	while (len && ft_isinset(s1[len - 1], set))
		len--;
	trim = ft_substr(s1, 0, len);
	return (trim);
}
