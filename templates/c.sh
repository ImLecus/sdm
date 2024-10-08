#!/bin/bash
# C language project template

make_template(){
    cd $cwd || exit
    local main=$(cat << 'EOF'
#include <stdio.h>

int main(){
    printf("Hello world!\n");
    return 0;
}

EOF
)

    echo "$main" > main.c || abort_process

    mkdir -p include

    local config=$(cat << 'EOF'
#ifndef CONFIG_H
#define CONFIG_H

#endif

EOF
)
    echo "$config" > include/config.h || abort_process

}