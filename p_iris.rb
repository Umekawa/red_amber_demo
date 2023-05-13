require 'datasets-arrow'
require 'red_amber'
include RedAmber
dataset = Datasets::Iris.new
iris = DataFrame.new(dataset) # before v0.2.3, should be `dataset.to_arrow`
p iris