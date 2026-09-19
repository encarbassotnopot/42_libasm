NAME = libasm.a
OBJS = ft_strlen.o
AS = nasm
ASFLAGS = -g -f elf64
ARFLAGS = rvc

all: $(NAME)

$(NAME): $(OBJS)
	$(AR) $(ARFLAGS) $@ $?

(%.o): %.s

clean:
	rm -rf $(OBJS)

fclean: clean
	rm -rf $(NAME)

re: fclean all

.PHONY: all clean fclean re
