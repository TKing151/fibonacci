CC=gcc

fibonacci:	fibonacci.o 
	$(CC) fibonacci.o  -o $@ -pthread

fibonacci.o:	fibonacci.c
	$(CC) -Wall -c $< -o $@ -pthread

clean:
	rm -f fibonacci.o *.o core *~