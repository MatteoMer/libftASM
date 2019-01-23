/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mmervoye <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/01/23 16:06:53 by mmervoye          #+#    #+#             */
/*   Updated: 2019/01/23 18:53:12 by mmervoye         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#define SIZE 8
extern void					ft_bzero(void *s, size_t size);
extern char					*ft_strcat(char *s1, char *s2);

void						ft_bzero_test(void)
{
	char			str[SIZE] = "coucou";
	int				size = 5;

	printf("FT_BZERO TESTS:\n");
	ft_bzero(&str, size);
	write(1, &str, SIZE);
	write(1,"\n", 1);
	strcpy(str, "coucou");
	size = 0;
	ft_bzero(&str, size);
	write(1, &str, SIZE);
	write(1,"\n", 1);
	printf("----------\n");
}

void					ft_strcat_test(void)
{
	char			s1[SIZE * 2];
	char			s2[SIZE];
	char			*ptr;
	
	strcpy(s1, "coucou");
	strcpy(s2, " ca va");
	ptr = ft_strcat(s1, s2);
	printf("%s ret: %s\n", s1, ptr);
}

int						main(void)
{
//	ft_bzero_test();
	ft_strcat_test();
	return (0);
}
