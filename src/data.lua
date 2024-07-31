--disable the chest recipes, in case the research is already completed (existing save)
data.raw["recipe"]["logistic-chest-active-provider"].enabled = false
data.raw["recipe"]["logistic-chest-active-provider"].hidden = true
--data.raw["recipe"]["logistic-chest-active-provider"].normal.enabled = false
--data.raw["recipe"]["logistic-chest-active-provider"].normal.hidden = true
--data.raw["recipe"]["logistic-chest-active-provider"].expensive.enabled = false
--data.raw["recipe"]["logistic-chest-active-provider"].expensive.hidden = true

data.raw["recipe"]["logistic-chest-buffer"].enabled = false
data.raw["recipe"]["logistic-chest-buffer"].hidden = true
--data.raw["recipe"]["logistic-chest-buffer"].normal.enabled = false
--data.raw["recipe"]["logistic-chest-buffer"].normal.hidden = true
--data.raw["recipe"]["logistic-chest-buffer"].expensive.enabled = false
--data.raw["recipe"]["logistic-chest-buffer"].expensive.hidden = true

data.raw["recipe"]["logistic-chest-requester"].enabled = false
data.raw["recipe"]["logistic-chest-requester"].hidden = true
--data.raw["recipe"]["logistic-chest-requester"].normal.enabled = false
--data.raw["recipe"]["logistic-chest-requester"].normal.hidden = true
--data.raw["recipe"]["logistic-chest-requester"].expensive.enabled = false
--data.raw["recipe"]["logistic-chest-requester"].expensive.hidden = true

--disable the Logistic System research
data.raw["technology"]["logistic-system"].enabled = false
data.raw["technology"]["logistic-system"].hidden = true
