.PHONY: clean, mrproper, install

.SUFFIXES:

app = statistics
CXX = g++
RM = rm -rf
SRC = src/
FLAGS = -std=c++11
ROOTMESSAGE = "ACHTUNG ! You must be root to do it !"

all: main.o 
		$(CXX) $(FLAGS) $^ -o $(app) 
		@echo "Finished building: $^"
		@echo "Build finished. You are ready to use $(app) :-)"

%.o: $(SRC)%.cpp
		$(CXX) $(FLAGS) -c $< -o $@
		@echo "Finished building: $^"   

clean:
		$(RM) *.o 
		@echo "All project useless files/folders have been deleted"

mrproper: clean
		$(RM) $(app)
		@echo "All project files/folders have been deleted"  

install:
		make all
		@echo $(ROOTMESSAGE)
		cp -r ../$(app) /opt/
		ln -s /opt/$(app)/$(app) /usr/bin/
		cp $(app).desktop /usr/share/applications/
		@echo "Done !"

run: all
		@echo "Trying to start $(app)..."
		./$(app)

remove:
		@echo $(ROOTMESSAGE)
		$(RM) /usr/bin/$(app) /usr/share/applications/$(app).desktop
		@echo "Done !"

pro: all clean run

zpro: install clean run

one: all run mrproper
