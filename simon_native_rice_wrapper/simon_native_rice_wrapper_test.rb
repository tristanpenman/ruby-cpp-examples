require './simon_native_rice_wrapper'

# This time we've wrapped a C++ class, so we have to instantiate it
simon = Simon.new

simon.says 'Hello'
