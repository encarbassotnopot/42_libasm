NAME = libasm.a
OBJS = ft_strlen.o ft_strcpy.o ft_strcmp.o ft_write.o ft_read.o ft_strdup.o
AS = nasm
ASFLAGS = -g -f elf64
ARFLAGS = rvc

all: $(NAME)

$(NAME): $(OBJS)
	$(AR) $(ARFLAGS) $@ $?

ft_strdup.o: ft_strlen.o ft_strdup.s

(%.o): %.s

clean:
	rm -rf $(OBJS)

fclean: clean
	rm -rf $(NAME)

re: fclean all

.PHONY: all clean fclean re
