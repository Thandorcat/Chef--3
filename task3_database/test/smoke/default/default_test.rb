# # encoding: utf-8

# Inspec test for recipe task3_database::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root')do
    it { should exist }
  end
end

describe package('mysql-community-server') do
  it { should be_installed }
end

describe service('mysql-default') do
    it { should be_enabled }
    it { should be_installed }
    it { should be_running }
end

# This is an example test, replace it with your own test.
describe port(3306) do
  it { should be_listening }
end
