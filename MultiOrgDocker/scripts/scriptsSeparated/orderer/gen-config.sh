
# Used for generation of he genesis block and the airline channel tx file
export FABRIC_CFG_PATH=../../config

# Genesis block generation
configtxgen -profile AirlineOrdererGenesis -outputBlock ../../artefacts/airline-genesis.block -channelID ordererchannel

# Airline channel creation
configtxgen -profile AirlineChannel -outputCreateChannelTx ../../artefacts/airline-channel.tx -channelID airlinechannel

# Used for generation of he genesis block and the airline channel tx file
export FABRIC_CFG_PATH=../../config