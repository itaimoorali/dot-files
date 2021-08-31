#!/bin/sh

up_setup_angular_node() {
  nodeenv --node='10.24.1' .virtualenv;
  a-venv;
  npm i -g npm@6.14.12;
}

up_setup_nuxt_node() {
  nodeenv --node='12.0.0' .virtualenv;
  a-venv;
  npm i -g npm@7.24.1;
}
