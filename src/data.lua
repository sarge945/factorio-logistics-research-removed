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

-- If either vehicle logistics setting is enabled, add vehicle logistics to the first logistic bots research
-- otherwise, it appears in the research tooltip twice
if settings.startup["LogisticResearchRemovedAllowTank"].value == true or settings.startup["LogisticResearchRemovedAllowCar"].value == true then
    table.insert(data.raw["technology"]["logistic-robotics"].effects,{modifier = true, type="vehicle-logistics"})
end

-- Disallow inserters to remove items from tanks, to prevent using them as overpriced requestor chests.
if settings.startup["LogisticResearchRemovedAllowTank"].value == true then
    table.insert(data.raw["car"]["tank"].flags,"no-automated-item-removal")
end

-- Disallow inserters to remove items from cars, to prevent using them as overpriced requestor chests.
if settings.startup["LogisticResearchRemovedAllowCar"].value == true then
    table.insert(data.raw["car"]["car"].flags,"no-automated-item-removal")
    data.raw["car"]["car"].trash_inventory_size = 20
    -- data.raw["car"]["car"].allow_remote_driving = true
end

-- Disallow inserters to remove items from storage chests, to prevent using them as manual requestor chests by setting filters and ordering bots to empty from a provider chest.
if settings.startup["LogisticResearchRemovedAllowStorageInteraction"].value == false then
    table.insert(data.raw["logistic-container"]["storage-chest"].flags,"no-automated-item-removal")
end
