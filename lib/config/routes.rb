require "active_support/core_ext/object/try"
require "active_support/core_ext/hash/slice"

module ActionDispatch::Routing
  class Mapper
    def routes_anytime_to(path_name)
      match path_name.to_s => 'anytime#freeze'
      match 'un' + path_name.to_s => 'anytime#unfreeze'
    end
  end
end