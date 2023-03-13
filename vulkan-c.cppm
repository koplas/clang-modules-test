module;

#include <iostream>
export module vulkan:c;

export namespace c {
    void hello() {
        std::cout << "hello\n";
    }
}