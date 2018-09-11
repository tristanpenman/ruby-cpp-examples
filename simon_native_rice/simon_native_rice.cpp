#include <iostream>
#include "rice/Module.hpp"

using namespace Rice;

void says(const char * str) {
    std::cout << str << std::endl;
}

extern "C"
void Init_simon_native_rice() {
    define_module("Simon")
        .define_module_function("says", &says);
}
