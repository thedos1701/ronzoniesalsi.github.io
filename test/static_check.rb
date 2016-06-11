#!/usr/bin/ruby
#
require "html-proofer"

HTMLProofer.check_directory("../_site/",{:allow_hash_href => true}).run
