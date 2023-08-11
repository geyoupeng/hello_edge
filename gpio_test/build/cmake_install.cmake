# Install script for directory: D:/graduate/wms_testpro/gpio_test

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/gpio_test")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "csky-elfabiv2-objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("D:/graduate/wms_testpro/gpio_test/build/components/cjson/cmake_install.cmake")
  include("D:/graduate/wms_testpro/gpio_test/build/components/driver/cmake_install.cmake")
  include("D:/graduate/wms_testpro/gpio_test/build/components/freertos/cmake_install.cmake")
  include("D:/graduate/wms_testpro/gpio_test/build/components/heap/cmake_install.cmake")
  include("D:/graduate/wms_testpro/gpio_test/build/components/lwip/cmake_install.cmake")
  include("D:/graduate/wms_testpro/gpio_test/build/components/mbedtls/cmake_install.cmake")
  include("D:/graduate/wms_testpro/gpio_test/build/components/mqtt/cmake_install.cmake")
  include("D:/graduate/wms_testpro/gpio_test/build/components/posix/cmake_install.cmake")
  include("D:/graduate/wms_testpro/gpio_test/build/components/riscv/cmake_install.cmake")
  include("D:/graduate/wms_testpro/gpio_test/build/components/wm_cli/cmake_install.cmake")
  include("D:/graduate/wms_testpro/gpio_test/build/components/wm_event/cmake_install.cmake")
  include("D:/graduate/wms_testpro/gpio_test/build/components/wm_hal/cmake_install.cmake")
  include("D:/graduate/wms_testpro/gpio_test/build/components/wm_ll/cmake_install.cmake")
  include("D:/graduate/wms_testpro/gpio_test/build/components/wm_log/cmake_install.cmake")
  include("D:/graduate/wms_testpro/gpio_test/build/components/wm_soc/cmake_install.cmake")
  include("D:/graduate/wms_testpro/gpio_test/build/components/wm_stub/cmake_install.cmake")
  include("D:/graduate/wms_testpro/gpio_test/build/components/wm_system/cmake_install.cmake")
  include("D:/graduate/wms_testpro/gpio_test/build/components/wm_wifi/cmake_install.cmake")
  include("D:/graduate/wms_testpro/gpio_test/build/components/wpa_supplicant/cmake_install.cmake")
  include("D:/graduate/wms_testpro/gpio_test/build/components/xt804/cmake_install.cmake")
  include("D:/graduate/wms_testpro/gpio_test/build/components/main/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "D:/graduate/wms_testpro/gpio_test/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
