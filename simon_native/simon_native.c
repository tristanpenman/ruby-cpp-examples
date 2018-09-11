#include <ruby.h>
#include <stdio.h>

VALUE says(VALUE _self, VALUE str) {
    Check_Type(str, T_STRING);
    puts(StringValueCStr(str));
    return Qnil;
}

void Init_simon_native() {
    VALUE mod = rb_define_module("Simon");
    const int num_args = 1;
    rb_define_module_function(mod, "says", says, num_args);
}
