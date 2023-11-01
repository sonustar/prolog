% Facts about animals
animal(whale, mammal, no_feathers, no_eggs, lives_in_water).
animal(eagle, bird, has_feathers, lays_eggs, flies).
animal(snake, reptile, no_feathers, lays_eggs, crawls).
animal(dog, mammal, no_feathers, no_eggs, four_legs).
animal(bat, mammal, no_feathers, no_eggs, flies).
animal(penguin, bird, has_feathers, lays_eggs, swims).
animal(crocodile, reptile, no_feathers, lays_eggs, swims).
animal(cat, mammal, no_feathers, no_eggs, four_legs).
animal(frog, amphibian, no_feathers, lays_eggs, swims).
animal(fish, fish, no_feathers, lays_eggs, lives_in_water).

% Rules to identify animals
is_mammal(X) :- animal(X, mammal, _, _, _).
is_bird(X) :- animal(X, bird, _, _, _).
is_reptile(X) :- animal(X, reptile, _, _, _).
is_amphibian(X) :- animal(X, amphibian, _, _, _).
is_fish(X) :- animal(X, fish, _, _, _).

% Predicate to identify an animal
identify_animal :-
    write('Enter a characteristic (e.g., mammal, bird, reptile, amphibian, fish): '),
    read(Characteristic),
    write('Possible animals matching this characteristic:'), nl,
    (
        (is_mammal(X), Characteristic == mammal) -> write(X), nl, false;
        (is_bird(X), Characteristic == bird) -> write(X), nl, false;
        (is_reptile(X), Characteristic == reptile) -> write(X), nl, false;
        (is_amphibian(X), Characteristic == amphibian) -> write(X), nl, false;
        (is_fish(X), Characteristic == fish) -> write(X), nl, false;
        true -> write('No animals match this characteristic.'), nl
    ).

% Sample query to identify an animal
% Try asking:
% ?- identify_animal.
