module;

#include <iostream>
export module vulkan:m;

export namespace m {
    void hello() {
        std::cout << "hello\n";
    }
}