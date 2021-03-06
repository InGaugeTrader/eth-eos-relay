
main: main.o
	g++ -std=c++17 main.o -pthread -L/usr/lib/x86_64-linux-gnu/ -lboost_system -lboost_thread -lboost_random -lboost_filesystem -lboost_context -lboost_program_options -lcryptopp -L/usr/local/lib/ -lscrypt -o main
	rm *.o

main.o: main.cpp
	g++ -std=c++17 -I . -c main.cpp -fpermissive -Ofast -DHAVE_CONFIG_H

clean:
	rm *.o runner
