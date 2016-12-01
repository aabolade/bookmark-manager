# require 'data_mapper'
# require "dm-postgres-adapter"
# require_relative 'link'

class Tag

  include DataMapper::Resource

  property :id, Serial
  property :tag, String

  has n, :links, :through => Resource

end

# DataMapper.setup(:default, ENV['DATABASE_URL'] ||  "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}")
# DataMapper.finalize
# DataMapper.auto_upgrade!
