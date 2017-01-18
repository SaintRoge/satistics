#include <iostream>

int main(int argc, char* argv[]) {
  if (argc > 1) {
    if (argv[1] == "-M") {
      if (argc > 2) {
	std::cout << "medium" << std::endl;
      } else {
	std::cout << "Choose at least one number for medium" << std::endl;
      }
    } else if (argv[1] == "-m") {
      if (argc > 2) {
	std::cout << "median" << std::endl;
      } else {
	std::cout << "Choose at least one number for median" << std::endl;
      }
    } else if (argv[1] == "-e") {
      if (argc > 3) {
	std::cout << "extent" << std::endl;
      } else {
	std::cout << "Choose at least two numbers for extent" << std::endl;
      }
    } else if (argv[1] == "--help") {
      std::cout << "Use at least one argument :" << std::endl << "-M for medium" << std::endl << "-m for median" << std::endl << "-e for extent" << std::endl;
    } else {
      std::cout << argv[1] << " is not valid, try to use --help" << std::endl;
    }
  } else {
    std::cout << "Wrong choice, try to use --help" << std::endl;
  }
  return 0;
}
