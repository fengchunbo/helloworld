DEPS =
OBJ = helloworld.o
CFLAGS =
%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

firefly_demo: $(OBJ)
	$(CXX) -o $@ $^ $(CFLAGS)

.PHONY: clean
clean:
	rm -f *.o *~ helloworld

.PHONY: install
install:
	cp -f firefly_demo $(TARGET_DIR)/usr/bin/

.PHONY: uninstall
uninstall:
	rm -f $(TARGET_DIR)/usr/bin/helloworld
