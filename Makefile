
CFLAGS_DBUS = $(shell pkg-config --cflags --libs dbus-1)
CFLAGS_DBUS_GLIB = $(shell pkg-config --cflags --libs dbus-glib-1)
CFLAGS_GIO  = $(shell pkg-config --cflags --libs gio-2.0)

CFLAGS = -g -Wall -Werror


all: DbusFileManager

DbusFileManager: dbus_file_manager.c
	gcc $< -o $@ $(CFLAGS) $(CFLAGS_DBUS) $(CFLAGS_DBUS_GLIB)


clean:
	rm -f DbusFileManager



.PHONY: all clean
