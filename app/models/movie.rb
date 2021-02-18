class Movie < ActiveRecord::Base
  def self.all_ratings
    %w[G PG PG-13 R]
  end

  def self.with_ratings rates
    rates.length > 0 ? Movie.where(:rating => rates) : Movie.all
  end
end
