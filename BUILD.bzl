load("@obazl_tools_cc//config:BASE.bzl",
     _BASE_COPTS    = "BASE_COPTS",
     "DSO_EXT",
     _BASE_LINKOPTS = "BASE_LINKOPTS",
     _define_module_version = "define_module_version")

define_module_version = _define_module_version

# load("@libs7//:BUILD.bzl",
#      _BASE_COPTS    = "BASE_COPTS",
#      _BASE_DEFINES  = "BASE_DEFINES",
#      _BASE_LINKOPTS = "BASE_LINKOPTS")

BASE_COPTS          = _BASE_COPTS
BASE_DEFINES       = ["PROFILE_$(COMPILATION_MODE)"]
BASE_LINKOPTS       = _BASE_LINKOPTS
LIBS7_VERSION       = "1.0.0"

BASE_SRCS = []
BASE_DEPS = [
    # "@libs7//lib:s7",
    # "@libs7//config:hdrs",
    "@mustachios//lib:mustachios",
    # "@liblogc//lib:logc"
]
BASE_INCLUDE_PATHS = [
    # "-Iexternal/libs7~{}/config".format(LIBS7_VERSION),
    # "-Iexternal/libs7~{}/src".format(LIBS7_VERSION),
    # "-Iexternal/mustachios~{}/src".format(MUSTACHIOS_VERSION),
    # "-Iexternal/liblogc~{}/src".format(LIBLOGC_VERSION),
]
TIMEOUT = "short"
