#define CATCH_CONFIG_MAIN
#include <iostream>
#include <fstream>
#include <string>
#include "catch.hpp"
#include "course.h"
#include "node.h"
#include "college.h"

TEST_CASE( "calculation of gpa" ) {
    std::ifstream fin;
    std::string filename = "grades.txt";
    College mycollege("grades");
    fin.open(filename.c_str());
    mycollege.load(fin);
    fin.close();
    mycollege.gpa();
    REQUIRE( mycollege.gpa() == 4);    
}


