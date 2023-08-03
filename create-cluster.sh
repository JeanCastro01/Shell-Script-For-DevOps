#!/usr/bin/env bash

# create-cluster.sh - Cria um cluster Kubernetes com Kind e extensoes

# Autor: Jean Castro

# Descricao 

# Exemplos:$ ./create-cluster.sh --no-ingress --no-metallb --cluster-name demo


# Testado em:
# bash 5.1.8
#-----------------------------------------------------------------------------#

source libs/functions_deps.sh
source libs/functions_main.sh


#--------------------------------------Variables---------------------------------------#
CLUSTER_NAME="demo"
ENABLE_INGRESS=1
ENABLE_METALLB=1

function trapped () {

    echo "Erro na linha $1"
    _clean
    exit 1
}

trap 'trapped $LINENO' ERR


#--------------------------------------Testing---------------------------------------#

[ -z "`which curl`" ]    && _install_curl
[ -z "`which kind`" ]    && _install_kind
[ -z "`which kubectl`" ] && _install_kubectl
[ -z "`which docker`" ]  && _install_docker






#--------------------------------------Execution--------------------------------------#

while [ -n "$1" ]; do
    case "$1" in
    --cluster-name) shift; CLUSTER_NAME="$1" ;;
    --no-ingress) ENABLE_INGRESS=0 ;;
    --no-ingress) ENABLE_METALLB=0 ;;
    -h|--help)      _hel; exit ;;
    *)   _error "$1" ;;
    esac
    shift
done



_create_cluster