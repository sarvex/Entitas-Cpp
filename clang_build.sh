#!/bin/bash

echo "Build started..."

start=`date +%s`
clang++ -std=c++11 -stdlib=libc++ -g \
    EntitasPP/ComponentTypeId.cpp \
    EntitasPP/Entity.cpp \
    EntitasPP/Group.cpp \
    EntitasPP/GroupObserver.cpp \
    EntitasPP/Matcher.cpp \
    EntitasPP/Pool.cpp \
    EntitasPP/ReactiveSystem.cpp \
    EntitasPP/SystemContainer.cpp \
    main.cpp \
-o bin/main-build
end=`date +%s`
run_time=$((end-start))

echo "Build finished ($run_times)"

read -s -n 1 -p "Press any key to close ..."
echo ""

