NAME    := libasm.a
CC      := cc
NASM    := nasm
CFLAGS  := -Wall -Wextra -Werror
NASMFLAGS := -f elf64
AR      := ar rcs
RM      := rm -f

ASM_SRC := ft_strlen.s #ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s
OBJ     := $(ASM_SRC:.s=.o)

TEST_BIN := a.out
TEST_SRC := main.c

all: $(NAME)

$(NAME): $(OBJ)
	$(AR) $@ $^

%.o: %.s
	$(NASM) $(NASMFLAGS) -o $@ $<

$(TEST_BIN): $(TEST_SRC) $(NAME)
	$(CC) $(CFLAGS) $< -L. -lasm -o $@

run: $(TEST_BIN)
	./$(TEST_BIN)

clean:
	$(RM) $(OBJ) $(TEST_BIN)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re run
