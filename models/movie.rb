class Movie
  attr_accessor :id
  attr_reader :name, :rating, :description,:year

  def initialize(attributes = {})
    @id = attributes[:id]
    @name = attributes[:name]
    @rating = attributes[:rating]
    @desription = attributes[:description]
    @year = attributes[:year]
  end
end
