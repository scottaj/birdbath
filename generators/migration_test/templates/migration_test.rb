require File.expand_path(File.dirname(__FILE__) + '/../test_helper') 

class <%= test_class_name %> < Test::Unit::TestCase
 
  def teardown
    migrate
  end

  def test_migration_should_<%= migration_name %>
    drop_all_tables

    migrate :version => <%= previous_schema_version %>

    flunk "TODO: setup test data"

    migrate :version => <%= schema_version %>

    flunk "TODO: examine results"

    migrate :version => <%= previous_schema_version %>

    flunk "TODO: examine results"
  end

end
