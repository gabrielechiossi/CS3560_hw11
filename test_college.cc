#define CATCH_CONFIG_MAIN
#include "catch.hpp"

TEST_CASE( "calculation of gpa", [College,gpa]) {
    College mycollege("grades.txt");
    mycollege.load(fin);
    std::course grade1;
    std::course grade2;
    mycollege.add(c);
    mycollege.add(b);

    mycollege.gpa();

    REQUIRE( mycollege.gpa() == 4);    
}


