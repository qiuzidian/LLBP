cmake_minimum_required(VERSION 2.8.12)

# Settings:
set(CTEST_DASHBOARD_ROOT                "/mnt/c/Users/Cortana/work/LLBP/cmake-3.22.1/Tests/CTestTest")
set(CTEST_SITE                          "Cortana927")
set(CTEST_BUILD_NAME                    "CTestTest-Linux-g++-ZeroTimeout")

set(CTEST_SOURCE_DIRECTORY              "/mnt/c/Users/Cortana/work/LLBP/cmake-3.22.1/Tests/CTestTestZeroTimeout")
set(CTEST_BINARY_DIRECTORY              "/mnt/c/Users/Cortana/work/LLBP/cmake-3.22.1/Tests/CTestTestZeroTimeout")
set(CTEST_CVS_COMMAND                   "")
set(CTEST_CMAKE_GENERATOR               "Unix Makefiles")
set(CTEST_CMAKE_GENERATOR_PLATFORM      "")
set(CTEST_CMAKE_GENERATOR_TOOLSET       "")
set(CTEST_BUILD_CONFIGURATION           "$ENV{CMAKE_CONFIG_TYPE}")
set(CTEST_COVERAGE_COMMAND              "/usr/bin/gcov")
set(CTEST_NOTES_FILES                   "${CTEST_SCRIPT_DIRECTORY}/${CTEST_SCRIPT_NAME}")
set(CTEST_TEST_TIMEOUT                  2)

CTEST_START(Experimental)
CTEST_CONFIGURE(BUILD "${CTEST_BINARY_DIRECTORY}" RETURN_VALUE res)
CTEST_BUILD(BUILD "${CTEST_BINARY_DIRECTORY}" RETURN_VALUE res)
CTEST_TEST(BUILD "${CTEST_BINARY_DIRECTORY}" RETURN_VALUE res)