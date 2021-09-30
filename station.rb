class Station
  attr_reader :name
  attr_accessor :trains

  @@trains = []
  @@stations = []
  
  def initialize(name)
    @name = name
    @@trains = []
  end
  
  def Station.get_stations
    @@stations
  end
    
  def add_train(train)
    @@trains << train
  end
  
  def train_type(type)
    @@trains.select{ |train| trains.type == type }
  end

  def go_train(train)
    @@trains.delete(train) if @@trains.include?(train)
    puts "clickety clack"
  end

end
