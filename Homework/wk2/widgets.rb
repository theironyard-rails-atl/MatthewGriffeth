require "yaml"
INVENTORY = YAML.load_file("widgets.yml")

class Widgets
  include Enumerable

  attr_reader :widgets

  def initialize(widgets)
    @widgets = widgets
  end

  def info
    @widgets.each do |widget|
      puts "widget"
    end
  end

  def max_price
    @widgets.max_by { |w| w[:price]}
  end

  def min_price
    @widgets.min_by { |w| w[:price]}
  end

  def revenue_total
    @widgets.reduce(0) { |sum, w | sum + (w[:price]*w[:sold])}
    end

  def profit_total
    @widgets.reduce(revenue_total){ |sum, w| sum - (w[:sold]*w[:cost_to_make])}
    end

  def top_ten
    @widgets.sort_by { |w| w[:sold]}.reverse.take(10)
  end
  def sold_by_department
   @widgets.reduce(Hash.new(0)) do |hash,w|
     hash[w[:department]] += w[:sold]
     hash
   end
  end


end
