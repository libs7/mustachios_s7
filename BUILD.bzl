load("@libs7//:BUILD.bzl",
     _BASE_COPTS    = "BASE_COPTS",
     _BASE_DEFINES  = "BASE_DEFINES",
     _BASE_LINKOPTS = "BASE_LINKOPTS",
     _LIBS7_VERSION = "LIBS7_VERSION")

BASE_COPTS          = _BASE_COPTS
BASE_DEFINES        = _BASE_DEFINES
BASE_LINKOPTS       = _BASE_LINKOPTS
LIBS7_VERSION       = _LIBS7_VERSION

MUSTACHIOS_VERSION = "0.1.0"
MUSTACHIOS_S7_VERSION = "0.1.0"

GOPT_VERSION        = "10.0.0"
LIBLOG_CC_VERSION   = "1.0.0"
UNITY_VERSION       = "2.5.2"
UTHASH_VERSION      = "2.3.0"

BASE_SRCS = []
BASE_DEPS = [
    "@libs7//src:s7", "@libs7//config:hdrs",
    "@mustachios//src:mustachios",
    "@liblog_cc//src:logc"
]
BASE_INCLUDE_PATHS = [
    "-Iexternal/libs7~{}/config".format(LIBS7_VERSION),
    "-Iexternal/libs7~{}/src".format(LIBS7_VERSION),
    "-Iexternal/mustachios~{}/src".format(MUSTACHIOS_VERSION),
    "-Iexternal/liblog_cc~{}/src".format(LIBLOG_CC_VERSION),
]
TIMEOUT = "short"
