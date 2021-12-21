#!/bin/bash
rspec --format documentation >> ./test-documentation/test.log
date >> ./test-documentation/test.log