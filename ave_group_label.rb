require 'datasets-arrow'
require 'red_amber'
include RedAmber
dataset = Datasets::Iris.new
iris = DataFrame.new(dataset)

df = iris
  .group(:label)
  .mean(:sepal_length, :sepal_width, :petal_length, :petal_width)
  .sort('+mean(sepal_width)')

p df
