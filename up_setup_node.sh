#!/bin/sh

up_setup_nuxt_node() {
  nodeenv --node='16.16.0' .virtualenv --verbose;
}


up_setup_nuxt_node_18() {
  nodeenv --node='18.17.1' --verbose .virtualenv;
}