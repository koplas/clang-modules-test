from string import ascii_lowercase

str = """module;

#include <iostream>
export module vulkan:{module_name};

export namespace {module_name} {{
    void hello() {{
        std::cout << "hello\\n";
    }}
}}"""

for i in ascii_lowercase:
    with open("vulkan-" + i + ".cppm", "w") as file:
        file.write(str.format(module_name=i))
        file.close()
