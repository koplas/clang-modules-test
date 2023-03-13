module;

#include <iostream>
export module vulkan:x;

export namespace x {
    void hello() {
        std::cout << "hello\n";
    }
}