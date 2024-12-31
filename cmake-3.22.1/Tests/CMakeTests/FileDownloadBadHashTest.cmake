if(NOT "/mnt/c/Users/Cortana/work/LLBP/cmake-3.22.1/Tests/CMakeTests" MATCHES "^/")
  set(slash /)
endif()
set(url "file://${slash}/mnt/c/Users/Cortana/work/LLBP/cmake-3.22.1/Tests/CMakeTests/FileDownloadInput.png")
set(dir "/mnt/c/Users/Cortana/work/LLBP/cmake-3.22.1/Tests/CMakeTests/downloads")

file(DOWNLOAD
  ${url}
  ${dir}/file3.png
  TIMEOUT 2
  STATUS status
  EXPECTED_HASH SHA1=5555555555555555555555555555555555555555
  )
