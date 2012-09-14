Anytime.setup do |config|
  #Configure the returning of Time.now and Date.now
  #Options: :utc and :local
  config.time_mode = :utc

  #Configure the supported environments
  #[:development] and [:development, :staging] are recommended
  config.environments = [:development]
end