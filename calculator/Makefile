CC = gcc
CFLAGS = -Wall -Wextra -std=c11
OBJ = main.o addition.o subtraction.o multiplication.o division.o 
DEPS = operations.h
TARGET = calculator

# Default rule
$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJ)

# Compile .c files to .o
%.o: %.c $(DEPS)
	$(CC) $(CFLAGS) -c $< -o $@

# Clean rule
.PHONY: clean
clean:
	rm -f $(OBJ) $(TARGET)
