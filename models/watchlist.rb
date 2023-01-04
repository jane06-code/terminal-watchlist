class Watchlist
  attr_accessor :id
  attr_reader :name, :description

  def initialize(attributes = {})
    @id = attributes[:id]
    @name = attributes[:name]
    @desription = attributes[:description]
  end
end
