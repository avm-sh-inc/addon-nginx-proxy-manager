#!/usr/bin/with-contenv bashio

bashio::log.info "test files"

# shellcheck disable=SC2089
query=".database.engine = \"knex-native\"
    | .database.knex.client = \"sqlite3\"
    | .database.knex.connection.filename = \"/data/database.sqlite\"
    | .database.knex.useNullAsDefault = \"true\""

bashio::log.info ${query}

