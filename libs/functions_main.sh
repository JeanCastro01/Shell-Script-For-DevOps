function _create_cluster () {

    kind create cluster \
    --config config/config.yaml \
    --name $CLUSTER_NAME

    [ $ENABLE_INGRESS -eq 1 ] && _deployy_ingress
    [ $ENABLE_METALLB -eq 1 ] && _deployy_metallb
}


function _deployy_ingress () {

    kubectl apply -f config/nginx/ingress.yaml

}

function _deployy_metallb () {

    kubectl apply -f config/nginx/metallb.yaml

}

function _help () {

    echo "
    $ ./create-cluster.sh [parametros]

    Parametros aceitos:
    --no-ingress - Nao fara o deploy do NGINX Ingress
    --no-metallb - Nao dara o deploy do Metal LB
    --cluster-name <nome> - Informa qual sera o nome do cluster criado
    -h | --help - Menu de Ajuda
    "
}

function _error () {

    echo "O Parametro $1 nao existe"
    _help
    exit 1
}

function _clean () {
    rm -f get-docker.sh

}