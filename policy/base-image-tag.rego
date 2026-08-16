package main

deny contains msg if {
    input[i].Cmd == "from"
    image := input[i].Value[0]
    is_unpinned(image)
    msg := sprintf("Base image '%s' must be pinned to a specific version tag", [image])
}

is_unpinned(image) if {
    contains(image, ":latest")
}

is_unpinned(image) if {
    not contains(image, ":")
}
