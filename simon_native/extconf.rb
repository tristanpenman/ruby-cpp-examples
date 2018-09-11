require 'mkmf'

# Generates a Makefile to compile simon_native.c into a bundle
# that can be loaded into a Ruby VM
create_makefile 'simon_native'
