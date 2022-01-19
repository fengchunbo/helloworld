DEPS =
OBJ = helloworld.o
CFLAGS =
%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

helloworld: $(OBJ)
	$(CXX) -o $@ $^ $(CFLAGS)

.PHONY: clean
clean:
	rm -f *.o *~ helloworld

.PHONY: install
install:
	cp -f helloworld $(TARGET_DIR)/usr/bin/

.PHONY: uninstall
uninstall:
	rm -f $(TARGET_DIR)/usr/bin/helloworld
