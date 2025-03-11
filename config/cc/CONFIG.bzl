load("@obazl_tools_cc//config:BASE.bzl",
     _BASE_COPTS    = "BASE_COPTS",
     "DSO_EXT",
     _define_module_version = "define_module_version")

define_module_version = _define_module_version
BASE_COPTS            = _BASE_COPTS
BASE_DEFINES          = ["PROFILE_$(COMPILATION_MODE)"]
BASE_LINKOPTS         = []

BASE_SRCS             = []
BASE_DEPS             = ["@mustachios//lib:mustachios"]

BASE_INCLUDE_PATHS    = []
TIMEOUT               = "short"
