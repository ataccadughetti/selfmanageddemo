#!/bin/sh

export CONFLUENT_USERNAME=""
export CONFLUENT_PASSWORD=""
#CLOUD API KEYS

export CLOUD_KEY="7L..."
export CLOUD_SECRET=""
export ORG_ID=""
export ENVID="env-"
export EMAIL=""
export ACCOUNTPW=""


export CLUSTERID="lk.."

##only needed if creating a new cluster
#export CLUSTERTYPE="basic"
#export CLUSTERNAME="self-managed-demo"

#Either us, eu
export GEO="eu"
export REGION="eu-central-1"

export CLUSTERAPIKEY=""
export CLUSTERAPISECRET=""

export CLOUDPROVIDER="aws"

export SR_API_KEY="PI..."
export SR_API_SECRET=""
export BOOTSTRAP_SERVERS=""
export SCHEMA_REGISTRY_URL=""



# dont modify this

export SASL_JAAS_CONFIG="org.apache.kafka.common.security.plain.PlainLoginModule required username=$CLUSTERAPIKEY password=$CLUSTERAPISECRET;"
export SASL_JAAS_CONFIG_PROPERTY_FORMAT="org.apache.kafka.common.security.plain.PlainLoginModule required username=$CLUSTERAPIKEY password=$CLUSTERAPISECRET;"
export REPLICATOR_SASL_JAAS_CONFIG="org.apache.kafka.common.security.plain.PlainLoginModule required username=$CLUSTERAPIKEY' password=$CLUSTERAPISECRET;"
export BASIC_AUTH_CREDENTIALS_SOURCE="USER_INFO"
export SCHEMA_REGISTRY_BASIC_AUTH_USER_INFO=$SR_API_KEY:$SR_API_SECRET


