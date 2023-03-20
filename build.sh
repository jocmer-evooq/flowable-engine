#!/bin/bash

SKIP_TEST="false"

./mvnw clean install -Dmaven.test.skip=$SKIP_TEST

pushd modules || exit 1

# Building flowable-spring-boot

pushd flowable-spring-common || exit 1
../../mvnw clean install  -Dmaven.test.skip=$SKIP_TEST
popd || exit 1
pushd flowable-idm-spring || exit 1
../../mvnw clean install  -Dmaven.test.skip=$SKIP_TEST
popd || exit 1
pushd flowable-idm-spring-configurator || exit 1
../../mvnw clean install  -Dmaven.test.skip=$SKIP_TEST
popd || exit 1
pushd flowable-spring || exit 1
../../mvnw clean install  -Dmaven.test.skip=$SKIP_TEST
popd || exit 1
pushd flowable-cmmn-spring || exit 1
../../mvnw clean install  -Dmaven.test.skip=$SKIP_TEST
popd || exit 1
pushd flowable-cmmn-spring-configurator || exit 1
../../mvnw clean install  -Dmaven.test.skip=$SKIP_TEST
popd || exit 1

# Dependencies of flowable-spring-configurator
pushd flowable-engine-configurator || exit 1
../../mvnw clean install  -Dmaven.test.skip=$SKIP_TEST
popd || exit 1
pushd flowable-spring-configurator || exit 1
../../mvnw clean install  -Dmaven.test.skip=$SKIP_TEST
popd || exit 1

# Dependencies of flowable-form-spring-configurator
pushd flowable-form-spring || exit 1
../../mvnw clean install  -Dmaven.test.skip=$SKIP_TEST
popd || exit 1

pushd flowable-form-spring-configurator || exit 1
../../mvnw clean install  -Dmaven.test.skip=$SKIP_TEST
popd || exit 1

# Dependencies of flowable-dmn-spring-configurator
pushd flowable-dmn-xml-converter || exit 1
../../mvnw clean install  -Dmaven.test.skip=$SKIP_TEST
popd || exit 1

pushd flowable-dmn-engine || exit 1
../../mvnw clean install  -Dmaven.test.skip=$SKIP_TEST
popd || exit 1

pushd flowable-dmn-spring || exit 1
../../mvnw clean install  -Dmaven.test.skip=$SKIP_TEST
popd || exit 1

pushd flowable-dmn-engine-configurator || exit 1
../../mvnw clean install  -Dmaven.test.skip=$SKIP_TEST
popd || exit 1

pushd flowable-dmn-spring-configurator || exit 1
../../mvnw clean install  -Dmaven.test.skip=$SKIP_TEST
popd || exit 1

# Deps of flowable-content-spring-configurator
pushd flowable-content-engine || exit 1
../../mvnw clean install  -Dmaven.test.skip=$SKIP_TEST
popd || exit 1

pushd flowable-content-spring || exit 1
../../mvnw clean install  -Dmaven.test.skip=$SKIP_TEST
popd || exit 1

pushd flowable-content-engine-configurator || exit 1
../../mvnw clean install  -Dmaven.test.skip=$SKIP_TEST
popd || exit 1

pushd flowable-content-spring-configurator || exit 1
../../mvnw clean install  -Dmaven.test.skip=$SKIP_TEST
popd || exit 1

# Deps of flowable-event-registry-spring-configurator

pushd flowable-event-registry-spring || exit 1
../../mvnw clean install  -Dmaven.test.skip=$SKIP_TEST
popd || exit 1

pushd flowable-event-registry-spring-configurator || exit 1
../../mvnw clean install  -Dmaven.test.skip=$SKIP_TEST
popd || exit 1

#LDAPS

pushd flowable-ldap || exit 1
../../mvnw clean install  -Dmaven.test.skip=$SKIP_TEST
popd || exit 1

#Rest

pushd flowable-common-rest || exit 1
../../mvnw clean install  -Dmaven.test.skip=$SKIP_TEST
popd || exit 1

pushd flowable-rest || exit 1
../../mvnw clean install  -Dmaven.test.skip=$SKIP_TEST
popd || exit 1

# Other deps
pushd flowable-cmmn-rest || exit 1
../../mvnw clean install  -Dmaven.test.skip=$SKIP_TEST
popd || exit 1

pushd flowable-content-rest || exit 1
../../mvnw clean install  -Dmaven.test.skip=$SKIP_TEST
popd || exit 1

pushd flowable-dmn-rest || exit 1
../../mvnw clean install  -Dmaven.test.skip=$SKIP_TEST
popd || exit 1

pushd flowable-event-registry-rest || exit 1
../../mvnw clean install  -Dmaven.test.skip=$SKIP_TEST
popd || exit 1

pushd flowable-form-rest || exit 1
../../mvnw clean install  -Dmaven.test.skip=$SKIP_TEST
popd || exit 1

# Deps of flowable-app-engine-rest
pushd flowable-app-engine-spring || exit 1
../../mvnw clean install  -Dmaven.test.skip=$SKIP_TEST
popd || exit 1

pushd flowable-app-engine-rest || exit 1
../../mvnw clean install  -Dmaven.test.skip=$SKIP_TEST
popd || exit 1

pushd flowable-idm-rest || exit 1
../../mvnw clean install  -Dmaven.test.skip=$SKIP_TEST
popd || exit 1

pushd flowable-groovy-script-static-engine || exit 1
../../mvnw clean install  -Dmaven.test.skip=$SKIP_TEST
popd || exit 1

pushd flowable-spring-boot || exit 1
../../mvnw clean install  -Dmaven.test.skip=$SKIP_TEST
popd || exit 1

popd || exit 1