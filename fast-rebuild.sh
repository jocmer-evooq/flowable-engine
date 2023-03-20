#!/bin/bash

./mvnw clean install -Dmaven.test.skip=true

pushd modules/flowable-spring-boot || exit 1
../../mvnw clean install  -Dmaven.test.skip=true
popd || exit 1
