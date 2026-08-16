package main

deny contains msg if {
    not user_set
    msg := "Dockerfile must specify a non-root USER instruction (found none)"
}

deny contains msg if {
    input[i].Cmd == "user"
    input[i].Value[0] == "root"
    msg := "Dockerfile must not run as root (found explicit USER root)"
}

user_set if {
    input[i].Cmd == "user"
    input[i].Value[0] != "root"
}
