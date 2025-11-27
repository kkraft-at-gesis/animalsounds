## code to prepare `farm_animals` dataset goes here

animal <- c("dog", "cat", "horse", "cow", "duck")
sound <- c("woof", "meow", "neigh", "moo", "quack")

farm_animals <- data.frame(animal = animal, sound = sound)

usethis::use_data(farm_animals, overwrite = TRUE)
