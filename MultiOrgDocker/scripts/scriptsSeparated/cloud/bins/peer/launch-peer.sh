
# Initialize the environment variables ORDERER_ADDRESS & MSP ID
source ./set-env.sh

# Peer Need to be launched under its own Identity
export CORE_PEER_MSPCONFIGPATH=./fabric-ca/client/acme/acme-peer1/msp

#peer node start -o $ORDERER_ADDRESS
peer node start