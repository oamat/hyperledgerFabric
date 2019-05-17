
# This sets the environment for accessing the cloud

# Make sure that IP Addresses are setup properly
# Use PUBLIC IP Here


export ORDERER_ADDRESS=18.144.68.240:7050
export ACME_EP=54.183.208.65:7051
export BUDGET_EP=54.183.156.254:7051

export CA_IP=54.193.94.161
export CA_URL=http://$CA_IP:7054


export FABRIC_LOGGING_SPEC=info

function    usage {
    echo  "Usage: . ./set-env.sh    ORG_NAME"
    echo  "Sets the environment for the specific org"
}

export CURRENT_ORG_NAME=$1

echo "Setting environment for $CURRENT_ORG_NAME"

# Set environment variables based on the ORG_Name
case $CURRENT_ORG_NAME in
    "acme")   export CORE_PEER_MSPCONFIGPATH=../fabric-ca/client/acme/admin/msp
              export CORE_PEER_ADDRESS=$ACME_EP
              export CORE_PEER_LOCALMSPID=AcmeMSP
        ;;
    "budget") export CORE_PEER_MSPCONFIGPATH=../fabric-ca/client/budget/admin/msp
              export CORE_PEER_ADDRESS=$BUDGET_EP
              export CORE_PEER_LOCALMSPID=BudgetMSP
        ;;

    *) usage
esac