require "active_record/connection_adapters/postgresql_adapter.rb"

ActiveRecord::ConnectionAdeptars::PostgreSQLAdapter::
  NATIVE_DATABASE_TYPES[:datetime] = {
    name: "timestamptz"
  }