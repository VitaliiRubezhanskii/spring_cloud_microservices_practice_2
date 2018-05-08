#!/bin/sh

VAULT_DEV_TOKEN=6d5c26d6-dbe8-b29e-398b-65d3046e31a1


vault auth ${VAULT_DEV_TOKEN}

vault write secret/application @${CONFIG_DIR}/application.json
vault write secret/catalog-service @${CONFIG_DIR}/catalog-service.json

