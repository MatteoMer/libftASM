/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mmervoye <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/01/23 16:06:53 by mmervoye          #+#    #+#             */
/*   Updated: 2019/01/24 16:36:51 by mmervoye         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#define SIZE 8
extern void					ft_bzero(void *s, size_t size);
extern char					*ft_strcat(char *s1, char *s2);
extern int					ft_islower(char c);
extern int					ft_isupper(char c);
extern int					ft_isalpha(char c);
extern int					ft_isdigit(char c);
extern int					ft_isalnum(char c);
extern int					ft_toupper(char c);
extern int					ft_tolower(char c);
extern size_t				ft_strlen(char *str);
extern int					ft_puts(char *str);
extern void					*ft_memset(char *str, int c, size_t len);
extern void					*ft_memcpy(char *src, char *dest, size_t len);
extern char					*ft_strdup(char *dest);
extern void					ft_cat(int fd);

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

void					ft_is_tests(void)
{
	char			a;
	char			b;

	a = 'A';
	b = '~';
	if (ft_isalnum(a))
		printf("yes\n");
	if (ft_isalnum(b))
		printf("not yes\n");
}

void					ft_to_tests(void)
{
	char		a;

	a = 'A';
	a = ft_tolower(a);
	printf(">>%c<<\n", a);
}

void					ft_strlen_test(void)
{
	printf("%d\n", ft_puts("Montpellier, first mentioned in a document of 985, was founded under a local feudal dynasty, the Guilhem, who combined two hamlets and built a castle and walls around the united settlement. The two surviving towers of the city walls, the Tour des Pins and the Tour de la Babotte, were built later, around the year 1200."));
}

void					ft_memset_test(void)
{
	char			str[8] = "coucou";

	ft_memset(str, 'a', 5);
	printf("%s\n", str);
}

void					ft_memcpy_test(void)
{
	char		str[8] = "coucou";
	char		str2[8] = "COUCOU";

	ft_memcpy(str, str2, 6);
	printf("%s\n", str);
}

void					ft_strdup_test(void)
{
	char		str[7] = "coucou";
	char		*ptr;

	ptr = ft_strdup("salut");
	printf("%s\n", ptr);
	free(ptr);
}

void					ft_cat_test(void)
{
	ft_cat(0);
}

int						main(void)
{
//	ft_bzero_test();
//	ft_strcat_test();
//	ft_is_tests();
//	ft_to_tests();
	ft_strlen_test();
//	ft_puts("test yey");
//	ft_memset_test();
//	ft_memcpy_test();
//	ft_strdup_test();
//	ft_cat_test();
	return (0);
}
