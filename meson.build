project(
  'fe', 'c',
  default_options: [
    'b_ndebug=if-release',
    'buildtype=debugoptimized',
    'c_std=c89',
    'warning_level=3',
    'werror=true',
  ],
  license: 'MIT',
  version: '0.0.0-development',
)

# https://github.com/mesonbuild/meson/issues/2550
subproject = meson.is_subproject()
static_subproject = subproject and get_option('default_library') == 'static'

fe_src = [
  'src/fe.c',
]

fe_inc = include_directories('inc')
if not static_subproject
  install_subdir('inc', install_dir: 'include', strip_directory: true)
endif

fe_lib = library(
  meson.project_name(), fe_src,
  include_directories: fe_inc,
  install: not static_subproject,
  version: meson.project_version().split('-')[0],
)

fe_dep = declare_dependency(
  include_directories: fe_inc,
  link_with: fe_lib,
)

executable(
  meson.project_name(), 'src/main.c',
  dependencies: fe_dep,
  install: not subproject,
)
