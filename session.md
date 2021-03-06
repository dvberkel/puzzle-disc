# Session
## Staring GAP
Start GAP by executing the following command.

```
gap
```

This starts a REPL.

## Reading sources
The following GAP code reads in a source file.

```
gap> Read("./puzzle-disc.g");
```

This makes the variable `disc` available.

## Size of `disc`
To determine the size of the group use the following commands

```
gap> Size(disc);
```

Or if you want the factors

```
gap> Collected( Factors( Size(disc) ) );
```

## Orbits
To determine the orbits of the group action use

```
gap> Orbits(disc);
```

Note that `disc` acts transitively.

## Primitivity
To examine if `disc` is primitive, we search for a non-trivial block.

```
gap> parities := Blocks(disc, MovedPoints(disc));
```

## Action on Blocks
To determine how `disc` acts on the two blocks create an `ActionHomomorphism`.

```
gap> morphism := ActionHomomorphism(disc, parities, OnSets);
gap> disc2 := Image(morphism);
gap> Size(disc2);
```

## Permutations as words in generators
We will now demonstrate how to determine words in the generators that produce
certain permutations.

```
gap> f := FreeGroup("r", "s");
gap> hom := GroupHomomorphismByImages(f, disc, GeneratorsOfGroup(f), GeneratorsOfGroup(disc));
```

With this homomorphism we can calculate preimages.

```
gap> (1, 3)(2, 4) in disc;
gap> PreImagesRepresentative(hom, (1, 3)(2, 4));
```
