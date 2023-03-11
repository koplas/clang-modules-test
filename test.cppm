module;

#include <iostream>


export module test;
import vulkan;

export {
    void hello() {
        std::cout << "hello\n";
    }
}
