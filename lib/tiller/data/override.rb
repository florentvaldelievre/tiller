# Environment override datasource for Tiller (github.com/markround/tiller). 
# This extracts all environment variables, and makes them available to templates 
# by converting to lowercase. Note that it doesn't prefix them with env_ so they
# will potentially clash/override any other values you have defined in other 
# datasources!
# Install into /usr/local/lib/tiller/data/override.rb
# And add to your list of data_sources in /etc/tiller/common.yaml
class EnvironmentOverrideDataSource < Tiller::DataSource
  def global_values
    values = Hash.new
    ENV.each { |k, v| values[k.downcase] = v }
    values
  end
end