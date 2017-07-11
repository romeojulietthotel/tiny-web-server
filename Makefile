CLANG = clang
CLANGFLAGS = -Wall -O2

GCC = gcc
GCCCFLAGS = -Wall -O2 -D_GNU_SOURCE

STRIP = strip -S --strip-unneeded \
--remove-section=.note.gnu.gold-version \
--remove-section=.comment \
--remove-section=.note \
--remove-section=.note.gnu.build-id \
--remove-section=.note.ABI-tag

all: tiny

tiny: tiny.c
	$(CLANG) $(CLANGFLAGS) -o tiny tiny.c
	$(STRIP) tiny

gcctiny: tiny.c
	$(GCC) $(GCCCFLAGS) -o tiny tiny.c
	$(STRIP) tiny

clean:
	rm -f *.o tiny *~
