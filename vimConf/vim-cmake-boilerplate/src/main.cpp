#include <cmath>
#include <cstdio>
#include <ios>
#include <iostream>
#include <iterator>
#include <memory>
#include <ostream>

#include "Config.h"

int main(int argc, char *argv[]) {

  std::shared_ptr<Foo> ptrFoo = nullptr;

  // output program location and version
  printf("Running: %s\nVersion: %i.%i\n", argv[argc - argc], VERSION_MAJOR,
         VERSION_MINOR);

  std::cout << " Test" << std::endl;

  std::cout << "resd" << std::endl;

  std::cout << "" << std::endl;

  printf("Hello, CMake!\n");
  return 0;
}
