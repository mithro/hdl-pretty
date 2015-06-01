# Scripts for prettifying VHDL and Verilog files

# Dependencies

You need a version of emacs in your path newer then 0.22 - I have only tested
with GNU Emacs 23.3.1

# Usage

```sh
./verliog-pretty < ugly-verilog.v > pretty-verilog.v
./vhdl-pretty < ugly-vhdl.vhd > pretty-vhdl.vhd
```

# How it works

The scripts launches Emacs, loads the correct "file mode" and calls the
reformatting command for that mode.

This repository includes the following to "Emacs Mode" for formatting
VHDL/Verilog.

 * Emacs VHDL Mode -- http://www.iis.ee.ethz.ch/~zimmi/emacs/vhdl-mode.html 
 * Mac's Verilog Mode -- http://www.verilog.com/verilog-mode.html || http://www.veripool.org/projects/verilog-mode/wiki/Intro
