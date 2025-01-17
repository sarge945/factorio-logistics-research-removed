--disable the chest recipes, in case the research is already completed (existing save)
data.raw["recipe"]["active-provider-chest"].enabled = false
data.raw["recipe"]["active-provider-chest"].hidden = true

data.raw["recipe"]["buffer-chest"].enabled = false
data.raw["recipe"]["buffer-chest"].hidden = true

data.raw["recipe"]["requester-chest"].enabled = false
data.raw["recipe"]["requester-chest"].hidden = true

--disable the Logistic System research
data.raw["technology"]["logistic-system"].enabled = false
data.raw["technology"]["logistic-system"].hidden = true
