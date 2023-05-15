#!/bin/sh

export CONFLUENT_USERNAME="ataccadughetti+ubb@confluent.io"
export CONFLUENT_PASSWORD="SabaTbilisi?1996"
#CLOUD API KEYS

export CLOUD_KEY="XHLDXYZXUVJEKAEK"
export CLOUD_SECRET="iAmpwYBClKWi4/KQSqw6Cz60/IWXg5cixIiUcplriz//RYRYt1Tmjx2c/sIPm/E1
D2X8I5Nj6PZk1tYFUirfdxo9793hyU0Sbaw1GSEwH/GF7IZzyaEyl9RFzs+z1reo"
export ORG_ID="6567aa66-3926-4012-8364-9051f660cef8"
export ENVID="env-rrr650"
export EMAIL=""
export ACCOUNTPW=""


export CLUSTERID="lkc-mvokz2"
##only needed if creating a new cluster
#export CLUSTERTYPE="basic"
#export CLUSTERNAME="self-managed-demo"

#Either us, eu
export GEO="eu"
export REGION="eu-central-1"

export CLUSTERAPIKEY="URXPXUAHDVBAOAEZ"
export CLUSTERAPISECRET="D2X8I5Nj6PZk1tYFUirfdxo9793hyU0Sbaw1GSEwH/GF7IZzyaEyl9RFzs+z1reo"

export CLOUDPROVIDER="aws"

export SR_API_KEY="FBCFSJAUYYGN47FR"
export SR_API_SECRET="I/dnygHuuamZvj0VwACCN+WmFCZunxnQJVLLqUzH8AMbocCneTFO2AvUI8nyZbIF"
export BOOTSTRAP_SERVERS="pkc-zpjg0.eu-central-1.aws.confluent.cloud:9092"
export SCHEMA_REGISTRY_URL="https://psrc-8vyvr.eu-central-1.aws.confluent.cloud"


export SASL_JAAS_CONFIG="org.apache.kafka.common.security.plain.PlainLoginModule required username=$CLUSTERAPIKEY password=$CLUSTERAPISECRET;"
export SASL_JAAS_CONFIG_PROPERTY_FORMAT="org.apache.kafka.common.security.plain.PlainLoginModule required username=$CLUSTERAPIKEY password=$CLUSTERAPISECRET;"
export REPLICATOR_SASL_JAAS_CONFIG="org.apache.kafka.common.security.plain.PlainLoginModule required username=$CLUSTERAPIKEY' password=$CLUSTERAPISECRET;"
export BASIC_AUTH_CREDENTIALS_SOURCE="USER_INFO"
export SCHEMA_REGISTRY_BASIC_AUTH_USER_INFO=$SR_API_KEY:$SR_API_SECRET

## CLICKHOUSE DATA

export TOPIC="pageviews"
export DATABASE_NAME="default"
export DATABASE_PASSWORD="egNKoxgICWr~8"
export DATABASE_HOSTNAME="uzkee0x1rb.eu-west-1.aws.clickhouse.cloud"

