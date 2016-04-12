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
