## stronger-gpw
An "improved" version of the `gpw` that generates stronger passwords.

### The 💪 Difference
`stronger-gpw` adds one symbol and one uppercase character to each password generated. There are no added command line options. Just run the it the same as you would run regular `gpw`.

The original `gpw` source is available [here](https://drjohnstechtalk.com/blog/2013/03/generate-pronounceable-passwords/).

There are also a few modifications to `Makefile` prepending `./` to the `loadtris` line, moving the dictionary location into a variable, and an `install` target to copy the binary into the executable path.

`loadtris.c` was also modified to generate the `sing` variable as a long to accomodate larger dictionary files.

### Compiling
Clone this repo into a local directory and modify `gpw.Makefile` with the location of the dictionary file on your system. Then run `make` to compile and `sudo make install` to install.
